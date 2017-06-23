package com.wjw.laboratory.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.NamelistDao;
import com.wjw.laboratory.entity.Namelist;
import com.wjw.laboratory.service.NamelistService;

@Service("namelistService")
public class NamelistServiceImpl extends BaseServiceImpl<Namelist> implements NamelistService {
	
	private NamelistDao namelistDao;
	
	@Resource 
	public void setNamelistDao(NamelistDao namelistDao) {
		super.setBaseDao(namelistDao);
		this.namelistDao = namelistDao;
	}

	@Override
	public void importExcel(File upload, String uploadFileName) {
		try {
			FileInputStream fileInputStream = new FileInputStream(upload);
			boolean is03Excel = uploadFileName.matches("^.+\\.(?i)(xls)$");
			//1、读取工作簿
			Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream):new XSSFWorkbook(fileInputStream);
			//2、读取工作表
			Sheet sheet = workbook.getSheetAt(0);
			//3、读取行
			if(sheet.getPhysicalNumberOfRows() > 2){
				Namelist namelist = null;
				for(int k = 2; k < sheet.getPhysicalNumberOfRows(); k++){
					//4、读取单元格
					Row row = sheet.getRow(k);
					namelist = new Namelist();
					
					//课程编号
					int courseId = (int) row.getCell(0).getNumericCellValue();
					//学生学号
					String studentAccount = "";
					try{
						studentAccount = row.getCell(2).getStringCellValue();
					}catch(Exception e){
						long dStudentAccount = (long) row.getCell(2).getNumericCellValue();
						studentAccount = String.valueOf(dStudentAccount);
					}
					System.out.println("courseId:" + courseId + " , studentAccount:" + studentAccount);
					String hql = "from Namelist n where n.courseId=? and n.studentAccount=?";
					List<Object> parameters = new ArrayList<Object>();
					parameters.add(courseId);
					parameters.add(studentAccount);
					List<Namelist> list = namelistDao.findObjects(hql, parameters);
					if(list != null && list.size() > 0){
						//5:examGrade  6:totalGrade
						//实验成绩
						String examGrade = "";
						try{
							examGrade = row.getCell(5).getStringCellValue();
						}catch(Exception e){
							long dExamGrade = (long) row.getCell(5).getNumericCellValue();
							examGrade = String.valueOf(dExamGrade);
						}
						
						//总评
						String totalGrade = "";
						try{
							totalGrade = row.getCell(6).getStringCellValue();
						}catch(Exception e){
							long dTotalGrade = (long) row.getCell(6).getNumericCellValue();
							totalGrade = String.valueOf(dTotalGrade);
						}
						list.get(0).setExamGrade(examGrade);
						list.get(0).setTotalGrade(totalGrade);
						System.out.println(list.get(0));
					}
				}
			}
			workbook.close();
			fileInputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
