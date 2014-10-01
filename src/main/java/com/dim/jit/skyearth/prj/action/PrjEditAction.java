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

import com.dim.jit.skyearth.prj.commom.PrjStatus;
import com.dim.jit.skyearth.prj.entity.Project;
import com.dim.jit.skyearth.prj.service.IPrjService;

@Controller
@RequestMapping(value = "/prj")
public class PrjEditAction {
	protected final Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	private IPrjService prjService;

	@RequestMapping(value = "/new.action")
	public String newProject(Model model) {
		model.addAttribute("project", new Project());
		model.addAttribute("status", PrjStatus.getItems());
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
		prjService.createProject(project);
		return "redirect:/prj/query.action";
	}

	/**
	 * 修改项目
	 * @param prjId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/edit/{prjId}.action", method = RequestMethod.GET)
	public String editProject(@PathVariable String prjId, Model model) {
		Project project=prjService.get(Integer.valueOf(prjId));
		model.addAttribute("project", project);
		model.addAttribute("status", PrjStatus.getItems());
		return "prj-edit";
	}
}