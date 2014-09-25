package com.dim.jit.skyearth.prj.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dim.jit.skyearth.prj.entity.Project;
import com.dim.jit.skyearth.prj.service.IPrjService;

@Controller
@RequestMapping(value = "/prj")
public class PrjEditAction {
	protected final Log logger = LogFactory.getLog(getClass());
	
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
	@RequestMapping(value="/create.action")
	public String createProject(Project project,Model model){
		//TODO
		return "redirect:/prj/list.action";
	}

	@RequestMapping(value = "/edit/{prjId}.action", method = RequestMethod.GET)
	public String editProject(@PathVariable String prjId, Model model) {
		return "redirect:/prj-edit";
	}
}