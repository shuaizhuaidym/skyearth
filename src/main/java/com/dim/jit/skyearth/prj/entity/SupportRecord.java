package com.dim.jit.skyearth.prj.entity;

import java.util.Date;

import com.dim.jit.skyearth.engineer.entity.Engineer;

/**
 * ���⴦���¼
 * 
 * @author yanming_dai
 * 
 */
public class SupportRecord {
	private Integer recordId;
	//���𹤳�ʦ
	private Engineer engineer;
	// ��������
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
