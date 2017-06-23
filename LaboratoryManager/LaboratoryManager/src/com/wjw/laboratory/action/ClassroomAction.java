package com.wjw.laboratory.action;

import java.net.URLDecoder;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;

import com.wjw.laboratory.entity.Classroom;
import com.wjw.laboratory.entity.User;
import com.wjw.laboratory.service.ClassroomService;
import com.wjw.laboratory.util.QueryHelper;

public class ClassroomAction extends BaseAction {
	@Resource
	private ClassroomService classroomService;
	
	private Classroom classroom;
	protected String[] selectedRow;

	// 列表页面
	public String listUI() throws Exception {
		QueryHelper queryHelper = new QueryHelper(Classroom.class, "c");
		try {
			if (classroom != null) {
				if (StringUtils.isNotBlank(classroom.getType())) {
					classroom.setType(URLDecoder.decode(classroom.getType(), "utf-8"));
					queryHelper.addCondition("c.type=?", classroom.getType());
				}

			}
			pageResult = classroomService.getPageResult(queryHelper, getPageNo(), getPageSize());
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}

		return "listUI";

	}

	//跳转到新增页面
	public String addUI(){
		return "addUI";
	}
	//保存新增
	public String add() throws Exception{
		if(classroom != null){
			classroomService.save(classroom);
		}
		return "list";
	}
	//跳转到编辑页面
	public String editUI(){
		if (classroom != null && classroom.getClassroomId() != null) {
			classroom = classroomService.findObjectById(classroom.getClassroomId());
		}
		return "editUI";
	}
	
	//保存编辑
	public String edit() throws Exception{
		if(classroom != null){
			classroomService.update(classroom);
		}
		return "list";
	}
	//删除
	public String delete(){
		if(classroom != null && classroom.getClassroomId() != null){
			classroomService.delete(classroom.getClassroomId());
		}
		return "list";
	}
	//批量删除
	public String deleteSelected(){
		if(selectedRow != null){
			for(String id: selectedRow){
				System.out.println("delete id:" + id);
				classroomService.delete(id);
			}
		}
		return "list";
	}
	
	//跳转到我的信息页面
	public String showUI(){
		if (classroom != null && classroom.getClassroomId() != null) {
			classroom = classroomService.findObjectById(classroom.getClassroomId());
		}
		return "showUI";
	}
	
	public void setSelectedRow(String[] selectedRow) {
		this.selectedRow = selectedRow;
	}
	
	public void setClassroom(Classroom classroom) {
		this.classroom = classroom;
	}
	public Classroom getClassroom() {
		return classroom;
	}
}
