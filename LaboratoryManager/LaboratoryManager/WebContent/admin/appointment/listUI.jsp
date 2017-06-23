<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>实验室预约管理</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	//全选、全反选
	function doSelectAll(){
		//prop jquery 1.6+建议使用
		$("input[name=selectedRow]").prop("checked", $("#selAll").is(":checked"));		
	}
	
	//激活
	function doActivated(id, state){
		if(confirm("当前操作不可逆，确定激活该信息吗？")){
			var url = "${pageContext.request.contextPath }/admin/appointment_activated.action";
			var args = {"appointment.id":id, "appointment.state":state};
			$.post(url, args, function(data){
				if(data == "1"){ //表示激活成功
					alert("操作成功！！");
					$("#state"+id).parent().prev().html("已激活");
				}else { //激活失败in
					alert("操作失败");
				}
			});
			return false; //取消超链接行为
		}
	}
	//删除
	function doDelete(id){
		document.forms[0].action = "${pageContext.request.contextPath }/admin/appointment_delete.action?appointment.id=" + id;
		document.forms[0].submit();
	}
	//批量删除
	function doDeleteAll(){
		document.forms[0].action = "${pageContext.request.contextPath }/admin/appointment_deleteSelected.action";
		document.forms[0].submit();
	}
	
	//
	function doExportExcel() {
		document.forms[0].action = "${pageContext.request.contextPath }/admin/appointmentExportExcel.action";
		document.forms[0].submit();
	}
	
	var list_url = "${pageContext.request.contextPath }/admin/appointment_listUI.action";
	//搜索
	function doSearch(){
  		//重置页号
  		$("#pageNo").val(1);
  		document.forms[0].action = list_url;
  		document.forms[0].submit();
  	}
</script>
</head>
<body>
<!-- 引入头部页面 -->
<%@ include file="/admin/common/top.jsp" %>
<div class="page">
<div class="box mtop">

<!-- 引入左边页面 -->
<%@ include file="/admin/common/left.jsp" %>
	
<div class="rightbox">
<form name="form1" action="" method="post" enctype="multipart/form-data">
	<h2 class="mbx">教务中心 &gt; 预约管理</h2>
	<div class="morebt">
		
		<ul><li><a class="tab1" href="${pageContext.request.contextPath }/admin/appointment_listUI.action">预约管理</a></li>
		<li><a class="tab2" href="${pageContext.request.contextPath }/teacher/exportExcelBycourseId.action?course.courseId=<s:property value="course.courseId" />">导出名单</a></li>
		</ul>
		
	</div>
	<div>
		<input type="button" value="批量删除" class="s_button" onclick="doDeleteAll()"/>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="导出实验室预约名单" class="s_button" onclick="doExportExcel()"/>
		<br>
		按条件查询：<br>
		<span>
			实验室:
          	<select id="classroomId" name="appointment.classroomId">
                <option value="">请选择</option>
                <c:forEach items="${classroomList}" var="classroom">
                	<option <c:if test="${appointment.classroomId eq classroom.classroomId}">selected</c:if> value="${classroom.classroomId }">编号：${classroom.classroomId } 名称：${classroom.name } 类型：${classroom.type } 容纳人数：${classroom.capacity }</option>
                </c:forEach>
            </select>
			&nbsp;&nbsp;
			星期几：
			<select id="whatday" name="appointment.whatday">
                <option value="0">请选择</option>
                <option <c:if test="${appointment.whatday==1}">selected</c:if> value="1">星期一</option>
                <option <c:if test="${appointment.whatday==2}">selected</c:if> value="2">星期二</option>
                <option <c:if test="${appointment.whatday==3}">selected</c:if> value="3">星期三</option>
                <option <c:if test="${appointment.whatday==4}">selected</c:if> value="4">星期四</option>
                <option <c:if test="${appointment.whatday==5}">selected</c:if> value="5">星期五</option>
                <option <c:if test="${appointment.whatday==6}">selected</c:if> value="6">星期六</option>
                <option <c:if test="${appointment.whatday==7}">selected</c:if> value="7">星期日</option>
            </select>
			&nbsp;&nbsp;
			第几节课：
			<select id="part" name="appointment.part">
                <option value="0">请选择</option>
                <option <c:if test="${appointment.part==1}">selected</c:if> value="1">第一节</option>
                <option <c:if test="${appointment.part==2}">selected</c:if> value="2">第二节</option>
                <option <c:if test="${appointment.part==3}">selected</c:if> value="3">第三节</option>
                <option <c:if test="${appointment.part==4}">selected</c:if> value="4">第四节</option>
                <option <c:if test="${appointment.part==5}">selected</c:if> value="5">第五节</option>
                <option <c:if test="${appointment.part==6}">selected</c:if> value="6">第六节</option>
           	</select>
           	&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="查询" onclick="doSearch()"/>
		</span>
	</div>
	<div class="cztable">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th><input type="checkbox" id="selAll" onclick="doSelectAll()" /></th>
					<th scope="col">课程编号</th>
					<th scope="col">实验名称</th>
					<th scope="col">实验教师</th>
					<th scope="col">实验地点</th>
					<th scope="col">实验人数</th>
					<th scope="col">开始周</th>
					<th scope="col">结束周</th>
					<th scope="col">星期几</th>
					<th scope="col">第几节课</th>
					<th scope="col">状态</th>
					<th scope="col">操作</th>
				</tr>
				<s:iterator value="pageResult.items" status="st">
					<tr align="center">
						<td><input type="checkbox" name="selectedRow" value="<s:property value='id' />" /></td>
						<td><s:property value="courseId"/></td>
						<td><s:property value="courseName"/></td>
						<td><s:property value="teacher"/></td>
						<td><s:property value="classroomId"/></td>
						<td><s:property value="personcount"/></td>
						<td><s:property value="startWeek"/></td>
						<td><s:property value="endWeek"/></td>
						<td><s:property value="whatday"/></td>
						<td><s:property value="part"/></td>
						<td><s:property value="state?'已生效':'未生效'"/></td>
						<td>
							<a id="state${id}" href="javascript:doActivated('<s:property value='id'/>')">激活</a>
	                        <a href="javascript:doDelete('<s:property value='id'/>')">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<jsp:include page="/common/pageNavigator.jsp" />
	</div>
</form>
</div>
</div>
<div class="footer"></div>
</div>
</body>
</html>