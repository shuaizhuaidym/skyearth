package com.dim.jit.skyearth.prj.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.dim.jit.skyearth.common.dao.AbstractDaoImple;
import com.dim.jit.skyearth.prj.entity.Project;

@Repository
public class PrjDaoImple extends AbstractDaoImple<Project> implements IPrjDao<Project> {

	@SuppressWarnings("unchecked")
	public List<Project> findAllProjects() {
		String hql = "FROM Project";
		return getCurrentSession().createQuery(hql).list();
	}

	@Override
	public List<Project> findByHql(String hql, Map<String, String> params) {
//		return getCurrentSession().get(Project.class, params);
		return null;
	}

	@Override
	public Integer createOrUpdate(Project project) {
		getCurrentSession().saveOrUpdate(project);
		return project.getPrjId();
	}

	@Override
	public Project get(Integer prjId) {
		return (Project)getCurrentSession().get(Project.class, prjId);
	}
}
