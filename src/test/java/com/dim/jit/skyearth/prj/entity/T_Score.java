package com.dim.jit.skyearth.prj.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class T_Score {
	private int id;
	private int scrores;
	private T_Student student;
	private T_course course;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public int getScrores() {
		return scrores;
	}

	public void setScrores(int scrores) {
		this.scrores = scrores;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne
	@JoinColumn(name = "student_id")
	public T_Student getStudent() {
		return student;
	}

	public void setStudent(T_Student student) {
		this.student = student;
	}

	@ManyToOne
	@JoinColumn(name = "course_id")
	public T_course getCourse() {
		return course;
	}

	public void setCourse(T_course course) {
		this.course = course;
	}

}
