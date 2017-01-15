package com.dim.jit.skyearth.common.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/dic")
public class DicAction {
	
	public String dicForm(){
		return "/dic/dic_form";
	}
	
	@RequestMapping(value="/list.action")
	public String listDic(){
		return "/dic/dic_list";
	}
}
