package com.dim.jit.skyearth.prj.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.dim.jit.skyearth.engineer.entity.Engineer;

/**
 * 问题处理记录
 * 
 * @author yanming_dai
 * 
 */
@Entity
@Table(name="TB_SUPPORT")
public class Support {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer supportId;
	//支持的项目
	private Project project;
	//负责工程师
	private Engineer engineer;
	// 处理日期
	private Date supportDate;
	//处理结果
	private String result;

	@Id
	@Column(name="support_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Integer getSupportId() {
		return supportId;
	}

	public void setSupportId(Integer supportId) {
		this.supportId = supportId;
	}

	@ManyToOne
	@JoinColumn(name="engineer_id")
	public Engineer getEngineer() {
		return engineer;
	}

	public void setEngineer(Engineer engineer) {
		this.engineer = engineer;
	}
	
	@Column(name="support_date")
	public Date getSupportDate() {
		return supportDate;
	}

	public void setSupportDate(Date supportDate) {
		this.supportDate = supportDate;
	}

	@Column(name="result")
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@ManyToOne
	@JoinColumn(name="prj_id")
	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

}
