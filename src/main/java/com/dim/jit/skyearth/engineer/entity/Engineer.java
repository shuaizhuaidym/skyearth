package com.dim.jit.skyearth.engineer.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.dim.jit.skyearth.prj.entity.Project;
/**
 * Engineer
 * @author yanming_dai
 *
 */
@Entity
@Table(name = "TB_ENGINEER", catalog = "skyearth")
public class Engineer {

	@Id
	@Column(name="engineer_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer engineerId;
	// 姓名
	@Column(name="engineer_name")
	private String engineerName;
	// 入职时间
	@Column(name="employ_date")
	private Date employDate;
	// 擅长技术
	private String skill;
	//项目支持记录
	private List<Project>supportRecords=new ArrayList<Project>();

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

	@ManyToMany(mappedBy="engineers")
	public List<Project> getSupportRecords() {
		return supportRecords;
	}

	public void setSupportRecords(List<Project> supportRecords) {
		this.supportRecords = supportRecords;
	}
}
