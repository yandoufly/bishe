package com.wjw.laboratory.service;

import java.io.File;

import com.wjw.laboratory.entity.Namelist;

public interface NamelistService extends BaseService<Namelist>{

	/**
	 * 录入成绩
	 * @param upload
	 * @param uploadFileName
	 */
	void importExcel(File upload, String uploadFileName);

}
