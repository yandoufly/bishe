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
			销售单
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
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox boxCenterList clearfix"
						style="_height: 1%;">
						<h5>
							<span>销售单</span>
						</h5>
						<div class="blank"></div>
						<table width="100%" border="0" cellpadding="5" cellspacing="1"
							bgcolor="#dddddd">
							<tr align="center">
								<td align="center" bgcolor="#ebf0f7">订单号</td>
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
							<s:iterator value="map.ordersList" id="list">
								<tr align="center" bgcolor="#FFFFFF">
									<td align="center"><s:property value="ordercode" /></td>
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
						</table>
						<div class="blank5"></div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="blank"></div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
