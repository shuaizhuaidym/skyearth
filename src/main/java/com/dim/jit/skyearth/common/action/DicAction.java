package com.dim.jit.skyearth.common.action;

import org.springframework.stereotype.Controller;

@Controller
public class DicAction {
	
	public String dicForm(){
		return "dic_form";
	}
	
	public String listDic(){
		return "dic_list";
	}
}
