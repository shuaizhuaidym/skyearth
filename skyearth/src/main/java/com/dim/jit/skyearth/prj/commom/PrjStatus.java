package com.dim.jit.skyearth.prj.commom;

/**
 * status of project
 * @author yanming_dai
 *
 */
public enum PrjStatus {
	CREATED("新建"), PROCESSING("处理中"), SUSPEND("暂停"), PROPOSED("给出方案"), FINISHED("结束");

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

}
