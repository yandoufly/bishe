<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>实验室管理</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	//全选、全反选
	function doSelectAll(){
		//prop jquery 1.6+建议使用
		$("input[name=selectedRow]").prop("checked", $("#selAll").is(":checked"));		
	}
	//新增
	function doAdd(){
		document.forms[0].action = "${pageContext.request.contextPath }/admin/classroom_addUI.action";
		document.forms[0].submit();
	}
	//编辑
	function doEdit(id){
		document.forms[0].action = "${pageContext.request.contextPath }/admin/classroom_editUI.action?classroom.classroomId=" + id;
		document.forms[0].submit();
	}
	//删除
	function doDelete(id){
		if(confirm("删除是不可恢复的,你确认要删除吗?")){
			document.forms[0].action = "${pageContext.request.contextPath }/admin/classroom_delete.action?classroom.classroomId=" + id;
			document.forms[0].submit();
		}
	}
	//批量删除
	function doDeleteAll(){
		if(confirm("删除是不可恢复的,你确认要删除吗?")){
			document.forms[0].action = "${pageContext.request.contextPath }/admin/classroom_deleteSelected.action";
			document.forms[0].submit();
		}
	}
	
	var list_url = "${pageContext.request.contextPath }/admin/classroom_listUI.action";
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
<jsp:include page="/admin/common/top.jsp" />
<div class="page">
<div class="box mtop">

<!-- 引入左边页面 -->
<jsp:include page="/admin/common/left.jsp" />
	
<div class="rightbox">
<form name="form1" action="" method="post" enctype="multipart/form-data">

	<h2 class="mbx">教务中心 &gt; 实验室列表</h2>
	<div class="morebt">
		<ul><li><a class="tab1" href="${pageContext.request.contextPath }/admin/classroom_listUI.action">实验室列表</a></li></ul>
		<ul><li><a class="tab2" href="${pageContext.request.contextPath }/admin/classroom_addUI.action">新增实验室</a></li></ul>
		<ul><li><a class="tab2" href="${pageContext.request.contextPath }/admin/appointment_listUI.action">预约管理</a></li></ul>
	</div>
	
	<div class="cztable">
		<div style="align:center;">
			<input type="button" value="显示全部" onclick="doSearch()" />&nbsp;
			<input type="button" value="新增教室" onclick="doAdd()" />&nbsp;
			<input type="button" value="批量删除" onclick="doDeleteAll()"/>&nbsp;
			实验室类型:<s:textfield name="classroom.type" id="Type"  cssStyle="width:160px;"/>
			<input type="button" value="搜 索" onclick="doSearch()"/>
		</div>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th><input type="checkbox" id="selAll" onclick="doSelectAll()" /></th>
					<th scope="col">实验室编号</th>
					<th scope="col">实验室名称</th>
					<th scope="col">实验室类型</th>
					<th scope="col">容纳人数</th>
					<th scope="col">操作</th>
				</tr>
				<s:iterator value="pageResult.items" status="st">
					<tr align="center">
						<td><input type="checkbox" name="selectedRow" value="<s:property value='classroomId' />" /></td>
						<td><s:property value="classroomId"/></td>
						<td><s:property value="name"/></td>
						<td><s:property value="type"/></td>
						<td><s:property value="capacity"/></td>
						<td>
							<a href="javascript:doEdit('<s:property value='classroomId'/>')">编辑</a>
	                        <a href="javascript:doDelete('<s:property value='classroomId'/>')">删除</a>
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