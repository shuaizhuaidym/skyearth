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
 * 
 * @author yanming_dai
 * 
 */
@Entity
@Table(name="tb_engineer")
public class Engineer {

	private Integer engineerId;
	// 姓名
	private String engineerName;
	// 入职时间
	private Date employDate;
	// 擅长技术
	private String skill;
	// 联系电话
	private String tel;
	// 支持的工程
	private List<Project> projects = new ArrayList<Project>();

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "engineer_id")
	public Integer getEngineerId() {
		return engineerId;
	}

	public void setEngineerId(Integer engineerId) {
		this.engineerId = engineerId;
	}

	@Column(name="engineer_name")
	public String getEngineerName() {
		return engineerName;
	}

	public void setEngineerName(String engineerName) {
		this.engineerName = engineerName;
	}

	@Column(name="employ_date")
	public Date getEmployDate() {
		return employDate;
	}

	public void setEmployDate(Date employDate) {
		this.employDate = employDate;
	}

	@Column(name="skill")
	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	@ManyToMany(mappedBy="projects")
	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	@Column(name="tel")
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
}
