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

	private Project project;

	@Autowired
	private IPrjService prjService;

	@RequestMapping(value = "/new.action")
	public String newProject() {
		return "prj-form";
	}

	/**
	 * 新建项目
	 * 
	 * @param project
	 * @return
	 */
	@RequestMapping(value = "/create.action")
	public String createProject(Project project, Model model) {
		prjService.createProject(project);
		return "redirect:/prj/list.action";
	}

	/**
	 * 修改项目
	 * @param prjId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/edit/{prjId}.action", method = RequestMethod.GET)
	public String editProject(@PathVariable String prjId, Model model) {
		return "redirect:/prj-edit";
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
}