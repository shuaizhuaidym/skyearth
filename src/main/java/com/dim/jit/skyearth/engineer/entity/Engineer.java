package com.dim.jit.skyearth.engineer.entity;

import java.util.Date;
/**
 * Engineer
 * @author yanming_dai
 *
 */
public class Engineer {

	private Integer engineerId;
	// 姓名
	private String engineerName;
	// 入职时间
	private Date employDate;
	// 擅长技术
	private String skill;

	public Integer getEngineerId() {
		return engineerId;
	}

	public void setEngineerId(Integer engineerId) {
		this.engineerId = engineerId;
	}

	public String getEngineerName() {
		return engineerName;
	}

	public void setEngineerName(String engineerName) {
		this.engineerName = engineerName;
	}

	public Date getEmployDate() {
		return employDate;
	}

	public void setEmployDate(Date employDate) {
		this.employDate = employDate;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}
}
