package com.dim.jit.skyearth.prj.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/prj")
public class PrjStatisticAction {

	@RequestMapping(value="/statistic.action")
	public String statistic(){
		return "prj-statistic";
	}
}
