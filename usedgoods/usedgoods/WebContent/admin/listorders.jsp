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
<title></title>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/four.css" rel="stylesheet" type="text/css" />
</head>
<%
	String message = (String) request.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr valign="top">
			<td bgcolor="#FFFFFF">
				<table width="96%" border="0" align="center" cellpadding="4"
					cellspacing="1" bgcolor="#aec3de">
					<tr align="left" bgcolor="#F2FDFF">
						<td colspan="20" class="optiontitle">订单信息列表</td>
					</tr>

					<tr align="center">
						<td align="center" bgcolor="#ebf0f7">订单号</td>
						<td align="center" bgcolor="#ebf0f7">买家</td>
						<td align="center" bgcolor="#ebf0f7">商家</td>
						<td align="center" bgcolor="#ebf0f7">商品</td>
						<td align="center" bgcolor="#ebf0f7">数量</td>
						<td align="center" bgcolor="#ebf0f7">单价</td>
						<td align="center" bgcolor="#ebf0f7">总计</td>
						<td align="center" bgcolor="#ebf0f7">状态</td>
						<td align="center" bgcolor="#ebf0f7">订单日期</td>
						<td align="center" bgcolor="#ebf0f7">收货人</td>
						<td align="center" bgcolor="#ebf0f7">送货地址</td>
						<td align="center" bgcolor="#ebf0f7">联系方式</td>
						
					</tr>
					<s:iterator value="list" id="list">
						<tr align="center" bgcolor="#FFFFFF">
							<td align="center"><s:property value="ordercode" /></td>
							<td align="center"><s:property value="buyer.username" /></td>
							<td align="center"><s:property value="seller.username" /></td>
							<td align="center"><s:property value="goods.goodsname" /></td>
							<td align="center"><s:property value="num" /></td>
							<td align="center"><s:property value="price" /></td>
							<td align="center"><s:property value="total" /></td>
							<td align="center"><s:property value="status" /></td>
							<td align="center"><s:property value="addtime" /></td>
							<td align="center"><s:property value="receiver" /></td>
							<td align="center"><s:property value="address" /></td>
							<td align="center"><s:property value="contact" /></td>
						</tr>
					</s:iterator>
					<tr align="right" bgcolor="#ebf0f7">
						<td colspan="20"><span style="float: left; color: red">${map.msg }</span>&nbsp;<span
							style="float: right;">${html}</span></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
