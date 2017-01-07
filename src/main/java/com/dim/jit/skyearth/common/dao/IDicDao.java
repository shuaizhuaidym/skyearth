package com.dim.jit.skyearth.common.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;

import com.dim.jit.skyearth.common.Dictionary;

public interface IDicDao {
	public Integer createOrUpdate(Dictionary dic);

	public List<Dictionary> findAllDics();

	public List<Dictionary> findByHql(String hql, Map<String, String> params);
	
	public Dictionary get(Integer prjId);

	public Session getCurrentSession();
}
