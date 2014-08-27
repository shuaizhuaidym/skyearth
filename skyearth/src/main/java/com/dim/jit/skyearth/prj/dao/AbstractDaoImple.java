package com.dim.jit.skyearth.prj.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.springframework.beans.factory.annotation.Autowired;

@SuppressWarnings("unchecked")
public class AbstractDaoImple<E> extends AbstractDao {


	private Class<E> entityClass;

	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * ID 查询
	 */
	public E findById(Integer id) {
		return (E) getCurrentSession().get(entityClass, id);
	}

	/**
	 * 保存
	 */
	public void saveOrUpdate(E e) {
		getCurrentSession().saveOrUpdate(e);
		getCurrentSession().flush();
	}

	/**
	 * 删除
	 */
	public void delete(E e) {
		getCurrentSession().delete(e);
		getCurrentSession().flush();
	}

	/**
	 * criteria 查询
	 */
	public List<E> findByCriteria(Criterion criterion) {
		Criteria criteria = getCurrentSession().createCriteria(entityClass);
		criteria.add(criterion);
		return criteria.list();
	}

	/**
	 * hql查询
	 */
	public List<E> findByQuery(String hql) {
		return getCurrentSession().createQuery(hql).list();
	}

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

}
