package com.dim.jit.skyearth.prj;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@org.springframework.stereotype.Controller
public class PrjAddAction {
	protected final Log logger = LogFactory.getLog(getClass());

	// @Service
	// @Repository
	// @RequestMapping(value = "/pets/{petId}", method = RequestMethod.GET, produces="application/json")
	// public Pet getPet(@PathVariable String petId,@RequestParam("petId") int petId,BindingResult result, Model model)
	// {
	@RequestMapping(value = "/index.action", method = RequestMethod.GET)
	public String handleRequest(@RequestParam(value = "name", required = false, defaultValue = "World") String name,
			Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {

		logger.info("Returning hello view");
		model.addAttribute("name", name);
		return "index";
	}
	
	@RequestMapping("/redirect")
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "redirect:/appointments";
		
	}

}
