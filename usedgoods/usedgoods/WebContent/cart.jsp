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
			购物车
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
							<span>购物车</span>
						</h5>
						<div class="blank"></div>
						<table width="100%" border="0" cellpadding="5" cellspacing="1"
							bgcolor="#dddddd">
							<tr align="center">
								<td align="center" bgcolor="#ebf0f7">商品</td>
								<td align="center" bgcolor="#ebf0f7">数量</td>
								<td align="center" bgcolor="#ebf0f7">价格</td>
								<td align="center" bgcolor="#ebf0f7">总计</td>
								<td align="center" bgcolor="#ebf0f7">加入日期</td>
								<td align="center" bgcolor="#ebf0f7" width="10%">操作</td>
							</tr>
							<s:iterator value="map.cartList" id="list">
								<tr align="center" bgcolor="#FFFFFF">
									<td align="center"><a
										href="index/detail.action?id=${goodsid }"><s:property
												value="goods.goodsname" /></a></td>
									<td align="center"><s:property value="num" /></td>
									<td align="center"><s:property value="price" />元</td>
									<td align="center">${num*price }元</td>
									<td align="center"><s:property value="addtime" /></td>
									<td align="center"><s:a
											href="index/deletecart.action?id=%{cartid}"
											onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</s:a></td>
								</tr>
							</s:iterator>
						</table>
						<table width="99%" align="center" border="0" cellpadding="5"
							cellspacing="0" bgcolor="#dddddd">
							<tr>
								<td bgcolor="#ffffff"><a href="index.jsp"><img
										src="themes/ecmoban_m182012/images/continue.gif"
										alt="continue" /> </a></td>
								<td bgcolor="#ffffff" align="right"><a
									href="index/preCheckout.action"><img
										src="themes/ecmoban_m182012/images/checkout.gif"
										alt="checkout" /> </a></td>
							</tr>
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
