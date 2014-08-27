package com.dim.jit.skyearth.prj.entity;

import java.util.Date;

import com.dim.jit.skyearth.engineer.entity.Engineer;

/**
 * 问题处理记录
 * 
 * @author yanming_dai
 * 
 */
public class SupportRecord {
	private Integer recordId;
	//负责工程师
	private Engineer engineer;
	// 处理日期
	private Date supportDate;

	public Integer getRecordId() {
		return recordId;
	}

	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}

	public Engineer getEngineer() {
		return engineer;
	}

	public void setEngineer(Engineer engineer) {
		this.engineer = engineer;
	}

	public Date getSupportDate() {
		return supportDate;
	}

	public void setSupportDate(Date supportDate) {
		this.supportDate = supportDate;
	}

}
