package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.TopicDAO;
import com.entity.Topic;

@Service("topicService")
public class TopicService {
	@Autowired
	private TopicDAO topicDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Topic topic) {
		this.topicDAO.save(topic);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Topic topic) {
		this.topicDAO.update(topic);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.topicDAO.delete(id);
	}

	/** delete * */
	public void delete(Topic topic) {
		this.topicDAO.delete(topic);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Topic> show() {
		return topicDAO.show();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Topic> checkUsersid(String name) {
		return this.topicDAO.queryByUsersid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Topic> checkGoodsid(String name) {
		return this.topicDAO.queryByGoodsid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Topic> checkNum(String name) {
		return this.topicDAO.queryByNum(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Topic> checkContents(String name) {
		return this.topicDAO.queryByContents(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Topic> checkAddtime(String name) {
		return this.topicDAO.queryByAddtime(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Topic> checkByLikeUsersid(String name) {
		return this.topicDAO.queryLikeByUsersid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Topic> checkByLikeGoodsid(String name) {
		return this.topicDAO.queryLikeByGoodsid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Topic> checkByLikeNum(String name) {
		return this.topicDAO.queryLikeByNum(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Topic> checkByLikeContents(String name) {
		return this.topicDAO.queryLikeByContents(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Topic> checkByLikeAddtime(String name) {
		return this.topicDAO.queryLikeByAddtime(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Topic checkId(String id) {
		return this.topicDAO.queryById(id);
	}
}
