package com.dim.jit.skyearth.prj.commom;

import java.util.HashMap;
import java.util.Map;

/**
 * status of project
 * @author yanming_dai
 *
 */
public enum PrjStatus {
	CREATED("created"), PROCESSING("processing"), SUSPEND("suspend"), PROPOSED("resolved"), FINISHED("finished");

	private String name;

	private PrjStatus(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 页面select使用
	 * @return
	 */
	public static Map<String, String> getItems() {
		Map<String, String> items = new HashMap<String, String>();
		for (PrjStatus st : PrjStatus.values()) {
			items.put(st.toString(), st.name);
		}
		return items;
	}
}
