package com.dim.jit.skyearth.prj.dao;

import java.util.List;

import org.hibernate.Session;

import com.dim.jit.skyearth.prj.entity.Project;

public interface IPrjDao<E> {
	public List<Project> findAllProjects();
	
	public Integer saveOrUpdateProject(Project project);
	
	public List<Project> findByHql(String hql);

	public Session getCurrentSession();
}
