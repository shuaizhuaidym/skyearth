package com.dim.jit.skyearth.prj.entity;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.MapKey;

public class T_Student {
	private int id;
	private String name;
	private Map<String, T_course> course = new HashMap<String, T_course>();

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@ManyToMany
	@MapKey(name = "id")
	@JoinTable(name = "score", joinColumns = @JoinColumn(name = "student_id"), inverseJoinColumns = @JoinColumn(name = "course_id"))
	public Map<String, T_course> getCourse() {
		return course;
	}

	public void setCourse(Map<String, T_course> course) {
		this.course = course;
	}

}
