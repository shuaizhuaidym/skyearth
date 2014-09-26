package com.dim.jit.skyearth.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dim.jit.skyearth.prj.dao.IPrjDao;
import com.dim.jit.skyearth.prj.entity.Project;

@Service
@Transactional
public class PrjServiceImple implements IPrjService {
	@Autowired
	IPrjDao<Project> prjDao;
	// @Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
	public List<Project> findAllprojects() {
		return prjDao.findAllProjects();
	}
	
	@Override
	public Integer createProject(Project project) {
		prjDao.createOrUpdate(project);
		return project.getPrjId();
	}

}
