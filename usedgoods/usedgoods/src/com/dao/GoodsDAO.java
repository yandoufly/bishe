package com.dao;

import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.entity.Goods;

public class GoodsDAO extends HibernateDaoSupport {
	// 调用HibernateDaoSupport中的save方法保存数据
	public void save(Goods goods) {
		try {
			super.getHibernateTemplate().save(goods);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 调用update方法更新数据
	public void update(Goods goods) {
		try {
			super.getHibernateTemplate().update(goods);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 按照Entity删除数据
	public void delete(Goods goods) {
		try {
			super.getHibernateTemplate().delete(goods);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 按主键删除数据
	public void delete(String id) {
		try {
			super.getHibernateTemplate().delete(getHibernateTemplate().get("com.entity.Goods", id));
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 调用Find方法查询全部数据
	@SuppressWarnings("unchecked")
	public List<Goods> show() {
		try {
			return super.getHibernateTemplate().find("From Goods");
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Goods> showAll() {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where status ='上架'";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Goods> news() {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where status ='上架' order by Goodsid desc";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(6);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Goods> hot() {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where status ='上架' order by hits desc";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(5);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Goods> front(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where cateid = ? and status ='上架'";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setString(0, name);
		query.setFirstResult(0);
		query.setMaxResults(5);
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Goods> query(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where cate.catename like ? and status ='上架' or goodsname like ? and status ='上架'";
		// session是Hibernate中的会话
		Session session = this.getSessionFactory().openSession();
		// Query是Hibernate中的执行HQL语句的接口
		Query query = session.createQuery(hql);
		query.setString(0, "%" + name + "%");
		query.setString(1, "%" + name + "%");
		// 使用List接收查询结果
		list = query.list();
		// 关闭Session会话
		session.close();
		return list;
	}

	// 通过条件使用HQL语句精确查询
	@SuppressWarnings("unchecked")
	public List<Goods> queryByUsersid(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where usersid = ?";
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
	public List<Goods> queryByGoodsname(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where goodsname = ? and status ='上架'";
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
	public List<Goods> queryByCateid(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where cateid = ?";
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
	public List<Goods> queryByPrice(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where price = ?";
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
	public List<Goods> queryByImage1(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image1 = ?";
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
	public List<Goods> queryByImage2(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image2 = ?";
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
	public List<Goods> queryByImage3(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image3 = ?";
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
	public List<Goods> queryByImage4(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image4 = ?";
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
	public List<Goods> queryByStorage(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where storage = ?";
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
	public List<Goods> queryBySellnum(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where sellnum = ?";
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
	public List<Goods> queryByAddtime(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where addtime = ?";
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
	public List<Goods> queryByHits(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where hits = ?";
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
	public List<Goods> queryByStatus(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where status = ?";
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
	public List<Goods> queryByContents(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where contents = ?";
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
	public List<Goods> queryLikeByUsersid(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where usersid like ?";
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
	public List<Goods> queryLikeByGoodsname(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where goodsname like ?";
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
	public List<Goods> queryLikeByCateid(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where cateid like ?";
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
	public List<Goods> queryLikeByPrice(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where price like ?";
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
	public List<Goods> queryLikeByImage1(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image1 like ?";
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
	public List<Goods> queryLikeByImage2(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image2 like ?";
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
	public List<Goods> queryLikeByImage3(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image3 like ?";
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
	public List<Goods> queryLikeByImage4(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where image4 like ?";
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
	public List<Goods> queryLikeByStorage(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where storage like ?";
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
	public List<Goods> queryLikeBySellnum(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where sellnum like ?";
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
	public List<Goods> queryLikeByAddtime(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where addtime like ?";
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
	public List<Goods> queryLikeByHits(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where hits like ?";
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
	public List<Goods> queryLikeByStatus(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where status like ?";
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
	public List<Goods> queryLikeByContents(String name) {
		List<Goods> list = new ArrayList<Goods>();
		String hql = "From Goods where contents like ?";
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
	public Goods queryById(String goodsid) {
		try {
			Goods goods = (Goods) super.getHibernateTemplate().get("com.entity.Goods", goodsid);
			return goods;
		} catch (RuntimeException re) {
			throw re;
		}
	}

}
