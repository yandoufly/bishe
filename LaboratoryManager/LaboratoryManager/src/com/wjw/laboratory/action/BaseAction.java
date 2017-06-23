package com.wjw.laboratory.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wjw.laboratory.util.PageResult;

public class BaseAction extends ActionSupport {
	protected Integer[] selectedRow;
	protected PageResult pageResult;
	private int pageNo;
	private int pageSize;
	public static int DEFAULT_PAGE_SIZE = 10;
	
	public Integer[] getSelectedRow() {
		return selectedRow;
	}
	public void setSelectedRow(Integer[] selectedRow) {
		this.selectedRow = selectedRow;
	}
	public PageResult getPageResult() {
		return pageResult;
	}
	public void setPageResult(PageResult pageResult) {
		this.pageResult = pageResult;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		if(pageSize < 1) pageSize = DEFAULT_PAGE_SIZE;
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
}
