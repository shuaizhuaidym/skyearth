package com.dim.jit.skyearth.prj.commom;

/**
 * status of project
 * @author yanming_dai
 *
 */
public enum PrjStatus {
	CREATED("�½�"), PROCESSING("������"), SUSPEND("��ͣ"), PROPOSED("��������"), FINISHED("����");

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
