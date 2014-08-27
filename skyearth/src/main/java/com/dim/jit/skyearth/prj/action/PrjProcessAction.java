package com.dim.jit.skyearth.prj.action;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.zip.ZipInputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jbpm.api.HistoryService;
import org.jbpm.api.ProcessEngine;
import org.jbpm.api.history.HistoryProcessInstance;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/process")
public class PrjProcessAction {

	@Autowired
	private ProcessEngine engine;

	@RequestMapping(value = "/process/{prjId}.action")
	public String process(@PathVariable String prjId) {
		return "prj-process";
	}

	@RequestMapping(value = "/query.action")
	public String deploy(Model model, HttpServletRequest request, HttpServletResponse response) {

		try {
			HistoryService hs = engine.getHistoryService();
			List<HistoryProcessInstance> hpis = hs.createHistoryProcessInstanceQuery()
					.processDefinitionId("ProcessDocument1-2").list();
			for (HistoryProcessInstance historyProcessInstance : hpis) {
				System.out.println(historyProcessInstance.getProcessInstanceId());
			}
		} catch (BeansException e) {
			e.printStackTrace();
		}
		return "process/prcs-query";
	}

	@RequestMapping(value = "/deploy.action")
	public String deploy() {
		// TODO
		ZipInputStream zipIn = null;
		try {
			zipIn = new ZipInputStream(new FileInputStream("/leave2.zip"));
			// String userName = (String) request.getSession().getAttribute("userName");
			//
			// List<ProcessDefinition> list = repositoryService.createProcessDefinitionQuery().list();
			// List<ProcessInstance> piList = executionService.createProcessInstanceQuery().list(); 
			// List<Task> taskList = taskService.findPersonalTasks(userName);
			// model.addAttribute("list", list);
			// model.addAttribute("piList", piList);
			// model.addAttribute("taskList", taskList);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
			if (zipIn != null) {
				try {
					zipIn.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return "redirect:/process/query.action";
	}
}
