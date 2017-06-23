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
			我的商品
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
							<span>我的商品</span>
						</h5>
						<div class="blank"></div>
						<table width="100%" border="0" cellpadding="5" cellspacing="1"
							bgcolor="#dddddd">
							<tr align="center">
								<td align="center" bgcolor="#ebf0f7">商品名称</td>
								<td align="center" bgcolor="#ebf0f7">商品类型</td>
								<td align="center" bgcolor="#ebf0f7">销售价格</td>
								<td align="center" bgcolor="#ebf0f7">库存</td>
								<td align="center" bgcolor="#ebf0f7">销量</td>
								<td align="center" bgcolor="#ebf0f7">发布日期</td>
								<td align="center" bgcolor="#ebf0f7">点击数</td>
								<td align="center" bgcolor="#ebf0f7">状态</td>
								<td align="center" bgcolor="#ebf0f7">操作</td>
							</tr>
							<s:iterator value="map.goodsList" id="list">
								<tr align="center" bgcolor="#FFFFFF">
									<td align="center"><s:property value="goodsname" /></td>
									<td align="center"><s:property value="cate.catename" /></td>
									<td align="center"><s:property value="price" /></td>
									<td align="center"><s:property value="storage" /></td>
									<td align="center"><s:property value="sellnum" /></td>
									<td align="center"><s:property value="addtime" /></td>
									<td align="center"><s:property value="hits" /></td>
									<td align="center"><s:property value="status" /></td>
									<td align="center">
									<s:if test="status == '上架'">
										<a href="index/status.action?id=${goodsid }&name=2">下架</a>
									</s:if>
									<s:if test="status == '下架'">
										<a href="index/status.action?id=${goodsid }&name=1">上架</a>
									</s:if>
										<a href="index/preEdit.action?id=${goodsid }">编辑</a>
									</td>
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
