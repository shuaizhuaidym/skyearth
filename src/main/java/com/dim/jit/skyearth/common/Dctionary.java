package com.dim.jit.skyearth.common;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author yanming_dai
 * dictionary class
 */
@Entity
@Table(name = "tb_dictionary", catalog = "skyearth")
public class Dctionary {
	public static final int[]types=new int[11];
	@Id
	@Column(name="dic_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer dictId;
	
	@Column(name="dic_type")
	private String dictType;
	
	@Column(name="dic_name")
	private String dictName;
	
	@Column(name="dic_code")
	private String dicCode;
	
	@Column(name="position")
	private Integer position;

	public Integer getDictId() {
		return dictId;
	}

	public void setDictId(Integer dictId) {
		this.dictId = dictId;
	}

	public String getDictType() {
		return dictType;
	}

	public void setDictType(String dictType) {
		this.dictType = dictType;
	}

	public String getDictName() {
		return dictName;
	}

	public void setDictName(String dictName) {
		this.dictName = dictName;
	}

	public String getDicCode() {
		return dicCode;
	}

	public void setDicCode(String dicCode) {
		this.dicCode = dicCode;
	}

	public Integer getPosition() {
		return position;
	}

	public void setPosition(Integer position) {
		this.position = position;
	}

}
