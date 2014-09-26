package com.dim.jit.skyearth.prj.service;

import java.util.List;

import com.dim.jit.skyearth.prj.entity.Project;

public interface IPrjService {
	public List<Project> findAllprojects();
	
	public Integer saveOrUpdateProject(Project project);
}
