package com.dim.jit.skyearth.organization.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/org")
public class OrgAction {

	@RequestMapping(value="/frame.action")
	String frame(){
		return "org-frame";
	}
}
