package com.dao;

import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.entity.Article;

public class ArticleDAO extends HibernateDaoSupport {
	// 调用HibernateDaoSupport中的save方法保存数据
	public void save(Article article) {
		try {
			super.getHibernateTemplate().save(article);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 调用update方法更新数据
	public void update(Article article) {
		try {
			super.getHibernateTemplate().update(article);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 按照Entity删除数据
	public void delete(Article article) {
		try {
			super.getHibernateTemplate().delete(article);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 按主键删除数据
	public void delete(String id) {
		try {
			super.getHibernateTemplate().delete(getHibernateTemplate().get("com.entity.Article", id));
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 调用Find方法查询全部数据
	@SuppressWarnings("unchecked")
	public List<Article> show() {
		try {
			return super.getHibernateTemplate().find("From Article");
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Article> front() {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article ";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(8);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Article> queryByTitle(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where title = ?";
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
	public List<Article> queryByContents(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where contents = ?";
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
	public List<Article> queryByAddtime(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where addtime = ?";
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
	public List<Article> queryByHits(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where hits = ?";
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
	public List<Article> queryLikeByTitle(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where title like ?";
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
	public List<Article> queryLikeByContents(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where contents like ?";
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
	public List<Article> queryLikeByAddtime(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where addtime like ?";
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
	public List<Article> queryLikeByHits(String name) {
		List<Article> list = new ArrayList<Article>();
		String hql = "From Article where hits like ?";
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
	public Article queryById(String articleid) {
		try {
			Article article = (Article) super.getHibernateTemplate().get("com.entity.Article", articleid);
			return article;
		} catch (RuntimeException re) {
			throw re;
		}
	}

}
