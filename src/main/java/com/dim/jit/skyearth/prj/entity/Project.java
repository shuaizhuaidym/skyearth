package com.dim.jit.skyearth.prj.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.dim.jit.skyearth.engineer.entity.Engineer;
import com.dim.jit.skyearth.prj.commom.PrjStatus;

@Entity
@Table(name = "tb_project", catalog = "test")
public class Project {
	// 项目标识
	private Integer prjId;
	// 项目名称
	private String prjName;
	// 创建人标识
	private Engineer creator;
	// 创建人部门
	private String creatorDept;
	// 创建时间
	private Date createDate;
	// 用户问题描述
	private String clientDesc;
	// 联络人
	private Engineer contact;
	// 负责工程师
	private List<Engineer> engineers = new ArrayList<Engineer>();
	// 当前状态
	private PrjStatus status;
	// 产品名称
	private String productName;
	// 产品版本
	private String produectVersion;
	// 初步方案
	private String initialSolution;
	// 真实原因
	private String realCause;
	// 结束时间
	private Date finishDate;
	// 支持记录
	private List<Support> supportRecord = new ArrayList<Support>();

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "prj_id")
	public Integer getPrjId() {
		return prjId;
	}

	public void setPrjId(Integer prjId) {
		this.prjId = prjId;
	}

	@Column(name = "prj_name")
	public String getPrjName() {
		return prjName;
	}

	public void setPrjName(String prjName) {
		this.prjName = prjName;
	}

	@Column(name = "creator_dept")
	public String getCreatorDept() {
		return creatorDept;
	}

	public void setCreatorDept(String creatorDept) {
		this.creatorDept = creatorDept;
	}

	@Column(name = "create_date")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public PrjStatus getStatus() {
		return status;
	}

	@Column(name = "status")
	public void setStatus(PrjStatus status) {
		this.status = status;
	}

	@Column(name = "client_desc")
	public String getClientDesc() {
		return clientDesc;
	}

	public void setClientDesc(String clientDesc) {
		this.clientDesc = clientDesc;
	}

	@Column(name = "product_name")
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "product_version")
	public String getProduectVersion() {
		return produectVersion;
	}

	public void setProduectVersion(String produectVersion) {
		this.produectVersion = produectVersion;
	}

	@Column(name = "initial_solution")
	public String getInitialSolution() {
		return initialSolution;
	}

	public void setInitialSolution(String initialSolution) {
		this.initialSolution = initialSolution;
	}

	@Column(name = "real_cause")
	public String getRealCause() {
		return realCause;
	}

	public void setRealCause(String realCause) {
		this.realCause = realCause;
	}

	@Column(name = "finish_date")
	public Date getFinishDate() {
		return finishDate;
	}

	public void setFinishDate(Date finishDate) {
		this.finishDate = finishDate;
	}

	@OneToMany
	@JoinColumn(name="prj_id")
	public List<Support> getSupportRecord() {
		return supportRecord;
	}

	public void setSupportRecord(List<Support> supportRecord) {
		this.supportRecord = supportRecord;
	}

	@ManyToOne
	@JoinColumn(name = "creator_id")
	public Engineer getCreator() {
		return creator;
	}

	public void setCreator(Engineer creator) {
		this.creator = creator;
	}

	@ManyToOne
	@JoinColumn(name = "contact_id")
	public Engineer getContact() {
		return contact;
	}

	public void setContact(Engineer contact) {
		this.contact = contact;
	}

	@JoinTable(name = "tb_support", 
			joinColumns = { @JoinColumn(name = "project_id") }, 
			inverseJoinColumns = { @JoinColumn(name = "engineer_id") })
	public List<Engineer> getEngineers() {
		return engineers;
	}

	public void setEngineers(List<Engineer> engineers) {
		this.engineers = engineers;
	}

}
