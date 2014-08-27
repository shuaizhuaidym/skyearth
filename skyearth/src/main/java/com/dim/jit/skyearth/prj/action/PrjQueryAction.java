package com.dim.jit.skyearth.prj.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dim.jit.skyearth.prj.entity.Project;
import com.dim.jit.skyearth.prj.service.IPrjService;

@org.springframework.stereotype.Controller
@RequestMapping(value="/prj")
public class PrjQueryAction {
	protected final Log logger = LogFactory.getLog(getClass());

	@Autowired
	private IPrjService prjService;

	/**
	 * List
	 * @param name
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/list.action", method = RequestMethod.GET)
	public String handleRequest(@RequestParam(value = "name", required = false, defaultValue = "World") String name,
			Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Project> prjs = prjService.findAllprojects();
		model.addAttribute("projects", prjs);

		logger.info("Returning hello view");
		return "prj-list";
	}

	/**
	 * Edit
	 * @param petId
	 * @return
	 */
	@RequestMapping(value = "/pets/{petId}", method = RequestMethod.GET, produces = "application/json")
	public String editPrj(@PathVariable String petId) {
		return "edit";
	}

	/**
	 * View
	 * @param petId
	 * @param result
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/pets/view", method = RequestMethod.GET, produces = "application/json")
	public String getPet(@RequestParam("petId") int petId, BindingResult result, Model model) {
		return "view";
	}

	@RequestMapping("/redirect")
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "redirect:/appointments";

	}

}
