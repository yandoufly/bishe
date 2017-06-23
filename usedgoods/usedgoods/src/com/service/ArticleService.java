package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ArticleDAO;
import com.entity.Article;

@Service("articleService")
public class ArticleService {
	
	@Autowired
	private ArticleDAO articleDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Article article) {
		this.articleDAO.save(article);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Article article) {
		this.articleDAO.update(article);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.articleDAO.delete(id);
	}

	/** delete * */
	public void delete(Article article) {
		this.articleDAO.delete(article);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Article> show() {
		return articleDAO.show();
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Article> front() {
		return articleDAO.front();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Article> checkTitle(String name) {
		return this.articleDAO.queryByTitle(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Article> checkContents(String name) {
		return this.articleDAO.queryByContents(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Article> checkAddtime(String name) {
		return this.articleDAO.queryByAddtime(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Article> checkHits(String name) {
		return this.articleDAO.queryByHits(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Article> checkByLikeTitle(String name) {
		return this.articleDAO.queryLikeByTitle(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Article> checkByLikeContents(String name) {
		return this.articleDAO.queryLikeByContents(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Article> checkByLikeAddtime(String name) {
		return this.articleDAO.queryLikeByAddtime(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Article> checkByLikeHits(String name) {
		return this.articleDAO.queryLikeByHits(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Article checkId(String id) {
		return this.articleDAO.queryById(id);
	}
}
