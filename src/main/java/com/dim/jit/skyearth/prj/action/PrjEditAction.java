package com.dim.jit.skyearth.prj.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dim.jit.skyearth.prj.entity.Project;
import com.dim.jit.skyearth.prj.service.IPrjService;

@Controller
@RequestMapping(value = "/prj")
public class PrjEditAction {
	protected final Logger logger = Logger.getLogger(getClass());
	
	private String test;
	
	@Autowired
	private IPrjService prjService;

	@RequestMapping(value = "/new.action")
	public String newProject() {
		return "prj-form";
	}
	
	/**
	 * create project
	 * @param project
	 * @return
	 */
	@RequestMapping(value = "/create.action", method = RequestMethod.POST)
	public String createProject(@ModelAttribute("project") Project project, BindingResult result, Model model,
			HttpServletRequest request) {
		logger.debug("project:"+project);
		logger.debug("name:" + project.getPrjName());

		prjService.createProject(project);
		return "redirect:/prj/query.action";
	}

	@RequestMapping(value = "/edit/{prjId}.action", method = RequestMethod.GET)
	public String editProject(@PathVariable String prjId, Model model) {
		return "redirect:/prj-edit";
	}
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}
}