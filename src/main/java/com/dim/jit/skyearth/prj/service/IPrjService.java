package com.dim.jit.skyearth.prj.service;

import java.util.List;

import com.dim.jit.skyearth.prj.entity.Project;

public interface IPrjService {
	public Integer createProject(Project project);
	
	public Project get(Integer prjId);
	
	public List<Project> findAllprojects();
}
