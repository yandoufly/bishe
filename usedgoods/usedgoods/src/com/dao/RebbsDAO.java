package com.dao;

import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.entity.Rebbs;

public class RebbsDAO extends HibernateDaoSupport {
	// 调用HibernateDaoSupport中的save方法保存数据
	public void save(Rebbs rebbs) {
		try {
			super.getHibernateTemplate().save(rebbs);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 调用update方法更新数据
	public void update(Rebbs rebbs) {
		try {
			super.getHibernateTemplate().update(rebbs);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 按照Entity删除数据
	public void delete(Rebbs rebbs) {
		try {
			super.getHibernateTemplate().delete(rebbs);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 按主键删除数据
	public void delete(String id) {
		try {
			super.getHibernateTemplate().delete(getHibernateTemplate().get("com.entity.Rebbs", id));
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 调用Find方法查询全部数据
	@SuppressWarnings("unchecked")
	public List<Rebbs> show() {
		try {
			return super.getHibernateTemplate().find("From Rebbs");
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryByUsersid(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where usersid = ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setString(0, name);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryByBbsid(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where bbsid = ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setString(0, name);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryByContents(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where contents = ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setString(0, name);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryByAddtime(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where addtime = ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setString(0, name);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过HQL语句模糊查询数据
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryLikeByUsersid(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where usersid like ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		// 将第0个?赋值
		query.setString(0, "%" + name + "%");
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过HQL语句模糊查询数据
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryLikeByBbsid(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where bbsid like ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		// 将第0个?赋值
		query.setString(0, "%" + name + "%");
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过HQL语句模糊查询数据
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryLikeByContents(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where contents like ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		// 将第0个?赋值
		query.setString(0, "%" + name + "%");
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过HQL语句模糊查询数据
	@SuppressWarnings("unchecked")
	public List<Rebbs> queryLikeByAddtime(String name) {
		List<Rebbs> list = new ArrayList<Rebbs>();
		String hql = "From Rebbs where addtime like ?";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		// 将第0个?赋值
		query.setString(0, "%" + name + "%");
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 按主键查询 返回的是Entity的实例
	public Rebbs queryById(String rebbsid) {
		try {
			Rebbs rebbs = (Rebbs) super.getHibernateTemplate().get("com.entity.Rebbs", rebbsid);
			return rebbs;
		} catch (RuntimeException re) {
			throw re;
		}
	}
}
