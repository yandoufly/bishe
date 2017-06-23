<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href=".">首页</a>
			<code> &gt; </code>
			用户中心
			<code> &gt; </code>
			购物结算
		</div>
	</div>
	<div class="blank"></div>

	<div class="blank"></div>
	<div class="block clearfix">

		<div class="AreaL">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox">
						<jsp:include page="usermenu.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>


		<div class="AreaR">
			<div class="block table">
			<form action="index/addorder.action" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
				<div class="flowBox">
					<h6>
						<span>收货人信息</span>
					</h6>
					<table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
						<tr>
							<td bgcolor="#ffffff">
								收货人姓名:
							</td>
							<td bgcolor="#ffffff" colspan="2">
								<input name="name" type="text" class="inputBg" id="name" value="<s:property value="#session.users.realname"/>" />
								(必填)
							</td>
						</tr>
						<tr>
							<td bgcolor="#ffffff">
								详细地址:
							</td>
							<td bgcolor="#ffffff" colspan="2">
								<input name="cond" type="text" class="inputBg" required="required" id="cond" />
								(必填)
							</td>
						</tr>
						<tr>
							<td bgcolor="#ffffff">
								联系方式:
							</td>
							<td bgcolor="#ffffff" colspan="2">
								<input name="msg" type="text" class="inputBg" required="required" id="msg" />
								(必填)
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center" bgcolor="#ffffff">
								<input type="submit" class="bnt_blue_2" value="确定" />
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
		</div>

	</div>
	<div class="blank"></div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
