<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="../js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="../css/ks.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 引入头部页面 -->
<%@ include file="./common/top.jsp" %>
<div class="page">
<div class="box mtop">

<!-- 引入左边页面 -->
<%@ include file="./common/left.jsp"%>

<div class="rightbox">
	<h2 class="mbx">教务中心 &gt; 我的书籍</h2>
	<div class="morebt">
		<ul><li><a class="tab2" href="m_device.html">设备管理</a></li></ul>
	</div>
	<div class="cztable">
		<div class="tis red">
			注：请仔细核对自己的书籍发放情况，如正确请点击“确定无误”，如不正确请点击“有异议”。</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th scope="col">实验室编号</th>
					<th scope="col">实验室种类</th>
					<th scope="col">设备编号</th>
					<th scope="col">设备进货时间</th>
					<th scope="col">设备使用时间</th>
					<th scope="col">设备维修时间</th>
					<th scope="col">状态</th>
				</tr>
			</tbody>
		</table>
	</div>
</div>
</div>
<div class="footer"></div>
</div>
</body>
</html>