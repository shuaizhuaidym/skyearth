package com.dim.jit.skyearth.prj.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/prj")
public class PrjEditAction {
	protected final Log logger = LogFactory.getLog(getClass());

	@RequestMapping(value = "/new.action")
	public String newProject() {
		return "prj-form";
	}

	@RequestMapping(value = "/edit/{prjId}.action", method = RequestMethod.GET)
	public String editProject(@PathVariable String prjId, Model model) {
		return "redirect:/prj-edit";
	}
}