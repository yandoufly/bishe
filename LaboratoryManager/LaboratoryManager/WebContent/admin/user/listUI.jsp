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
<title>用户列表</title>
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
		document.forms[0].action = "${pageContext.request.contextPath }/admin/user_addUI.action";
		document.forms[0].submit();
	}
	//编辑
	function doEdit(id){
		document.forms[0].action = "${pageContext.request.contextPath }/admin/user_editUI.action?user.id=" + id;
		document.forms[0].submit();
	}
	//删除
	function doDelete(id){
		if(confirm("删除是不可恢复的,你确认要删除吗?")){
			document.forms[0].action = "${pageContext.request.contextPath }/admin/user_delete.action?user.id=" + id;
			document.forms[0].submit();
		}
	}
	//批量删除
	function doDeleteAll(){
		if(confirm("删除是不可恢复的,你确认要删除吗?")){
			document.forms[0].action = "${pageContext.request.contextPath }/admin/user_deleteSelected.action";
			document.forms[0].submit();
		}
	}
	
	var list_url = "${pageContext.request.contextPath }/admin/user_listUI.action";
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

	<h2 class="mbx">用户中心 &gt; 用户列表</h2>
	<div class="morebt">
		<ul>
			<li><a class="tab1" href="${pageContext.request.contextPath }/admin/user_listUI.action">用户列表</a></li>
			<li><a class="tab2" href="${pageContext.request.contextPath }/admin/showUI.jsp">个人中心</a></li>
			<li><a class="tab2" href="${pageContext.request.contextPath }/admin/user_addUI.action">新增用户</a></li>
		</ul>
		
	</div>
	
	<div class="cztable">
		<div style="align:center;">
			<input type="button" value="显示全部" onclick="doSearch()" />&nbsp;
			<input type="button" value="新增用户" onclick="doAdd()" />&nbsp;
			<input type="button" value="批量删除" onclick="doDeleteAll()"/>&nbsp;
			用户名:<s:textfield name="user.name" id="userName" cssStyle="width:160px;"/>
			<input type="button" value="搜 索" onclick="doSearch()"/>
		</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th><input type="checkbox" id="selAll" onclick="doSelectAll()" /></th>
					<th scope="col">姓名</th>
					<th scope="col">性别</th>
					<th scope="col">职称</th>
					<th scope="col">专业</th>
					<th scope="col">手机号码</th>
					<th scope="col">QQ</th>
					<th scope="col">角色</th>
					<th scope="col">操作</th>
				</tr>
				<s:iterator value="pageResult.items" status="st">
					<tr align="center">
						<td><input type="checkbox" name="selectedRow" value="<s:property value='id' />" /></td>
						<td><s:property value="name"/></td>
						<td><s:property value="sex?'男':'女'"/></td>
						<td><s:property value="profession"/></td>
						<td><s:property value="specialty"/></td>
						<td><s:property value="cellphone1"/></td>
						<td><s:property value="qq"/></td>
						<td>
							<s:if test="role == 0">管理员</s:if>
							<s:if test="role == 1">教师</s:if>
							<s:if test="role == 2">学生</s:if>
						</td>
						<td>
							<a href="javascript:doEdit('<s:property value='id'/>')">编辑</a>
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