package com.dim.jit.skyearth.prj.action;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipInputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/process")
public class PrjProcessAction {
	protected final Logger logger = Logger.getLogger(getClass());

	@Autowired
	private ProcessEngine processEngine;

	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	private TaskService taskService;

	@RequestMapping(value = "/process/{prjId}.action")
	public String process(@PathVariable String prjId) {
		return "prj-process";
	}

	@RequestMapping(value = "/query.action")
	public String deploy(Model model, HttpServletRequest request, HttpServletResponse response) {

		try {
			List<Task> tasks = taskService.createTaskQuery()
				    .taskAssignee("kermit")
				    .processVariableValueEquals("orderId", "0815")
				    .orderByTaskDueDate()
				    .asc()
				    .list();
			for(Task tsk:tasks){
				System.out.println(tsk.getName());
			}
		} catch (BeansException e) {
			e.printStackTrace();
		}
		return "process/prcs-query";
	}

	/**
	 * 发布流程
	 * @return
	 */
	@RequestMapping(value = "/deploy.action")
	public String deploy() {
		try {
			// deploy
			ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
			RepositoryService repositoryService = processEngine.getRepositoryService();
			repositoryService.createDeployment().addClasspathResource("VacationRequest.bpmn20.xml")
					.deploy();
			logger.info("Number of process definitions: "
					+ repositoryService.createProcessDefinitionQuery().count());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/process/query.action";
	}
	
	/**
	 * 启动流程
	 * @return
	 */
	@SuppressWarnings("unused")
	@RequestMapping(value = "/start.action")
	public String start(){
		// start
					Map<String, Object> variables = new HashMap<String, Object>();
					variables.put("employeeName", "Kermit");
					variables.put("numberOfDays", new Integer(4));
					variables.put("vacationMotivation", "I'm really tired!");

					RuntimeService runtimeService = processEngine.getRuntimeService();
					ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("vacationRequest", variables);

					// Verify that we started a new process instance
					// Log.info("Number of process instances: " + runtimeService.createProcessInstanceQuery().count());
					// complete
					// Fetch all tasks for the management group
					TaskService taskService = processEngine.getTaskService();
					List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("management").list();
					for (Task task : tasks) {
						// Log.info("Task available: " + task.getName());
					}
					Task task = tasks.get(0);

					Map<String, Object> taskVariables = new HashMap<String, Object>();
					taskVariables.put("vacationApproved", "false");
					taskVariables.put("managerMotivation", "We have a tight deadline!");
					taskService.complete(task.getId(), taskVariables);

					// query
					List<Task> tasks2 = taskService.createTaskQuery().taskAssignee("kermit")
							.processVariableValueEquals("orderId", "0815").orderByDueDateNullsFirst().asc().list();
					//deploy
					String barFileName = "path/to/process-one.bar";
					ZipInputStream inputStream;
					try {
						inputStream = new ZipInputStream(new FileInputStream(barFileName));
						repositoryService.createDeployment().name("process-one.bar").addZipInputStream(inputStream).deploy();
					} catch (FileNotFoundException e) {
						e.printStackTrace();
					}
					System.out.println(tasks2);
		return "process/prcs-query";
	}
	/**
	 * 结束流程
	 */
	public String completeProcess() {
		TaskService taskService = processEngine.getTaskService();
		List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("management").list();
		for (Task task : tasks) {
			logger.info("Task available: " + task.getName());
		}
		Task task = tasks.get(0);

		Map<String, Object> taskVariables = new HashMap<String, Object>();
		taskVariables.put("vacationApproved", "false");
		taskVariables.put("managerMotivation", "We have a tight deadline!");
		taskService.complete(task.getId(), taskVariables);
		return "list";
	}
	
}
