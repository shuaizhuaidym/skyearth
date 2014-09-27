package com.dim.jit.skyearth.prj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dim.jit.skyearth.prj.entity.Project;

@Repository
public class PrjDaoImple extends AbstractDaoImple<Project> implements IPrjDao<Project> {

	@SuppressWarnings("unchecked")
	public List<Project> findAllProjects() {
		String hql = "FROM Project";
		return getCurrentSession().createQuery(hql).list();
	}

	@Override
	public List<Project> findByHql(String hql) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer createOrUpdate(Project project) {
		getCurrentSession().saveOrUpdate(project);
		return project.getPrjId();
	}
	

}
