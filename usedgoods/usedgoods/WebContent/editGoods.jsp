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
<script language="javascript" type="text/javascript"
	src="<%=basePath%>js/selimage.js" charset="utf-8"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href=".">首页</a>
			<code> &gt; </code>
			编辑商品
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
							<span>编辑商品</span>
						</h5>
						<div class="blank"></div>
						<form name="formEdit" action="index/editGoods.action" method="post">
							<table width="100%" border="0" cellpadding="5" cellspacing="1"
								bgcolor="#dddddd">
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">商品名称：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input
										type="text" value="${goods.goodsname }" name="goods.goodsname"
										id="goodsname" size="25" class="inputBg" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">商品类型：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><select
										name="goods.cateid" class="inputBg" id="cateid">
											<s:iterator value="map.cateList">
												<option value="${cateid }">${catename }</option>
											</s:iterator>
									</select></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">图片1：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input
										type="text" value="${goods.image1 }" name="goods.image1" size="25"
										class="inputBg" id="image1" onclick="selimage1();"
										readonly="readonly" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">图片2：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input
										type="text" value="${goods.image2 }" name="goods.image2" size="25"
										class="inputBg" id="image2" onclick="selimage2();"
										readonly="readonly" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">图片3：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input
										type="text" value="${goods.image3 }" name="goods.image3" size="25"
										class="inputBg" id="image3" onclick="selimage3();"
										readonly="readonly" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">图片4：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input
										type="text" value="${goods.image4 }" name="goods.image4" size="25"
										class="inputBg" id="image4" onclick="selimage4();"
										readonly="readonly" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">价格：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input
										type="text" value="${goods.price }" name="goods.price" size="25"
										class="inputBg" id="price" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">库存：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input
										type="text" value="${goods.storage }" name="goods.storage" size="25"
										class="inputBg" id="storage" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">商品介绍：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><script
											type="text/javascript" src="ckeditor/ckeditor.js"></script> <textarea
											cols="80" name="goods.contents" id="contents" rows="10">${goods.contents }</textarea>
										<script type="text/javascript">
											CKEDITOR.replace('contents', {
												language : 'zh-cn'
											});
										</script></td>
								</tr>
								<tr>
									<td colspan="2" align="center" bgcolor="#FFFFFF"><input
										type="submit" class="bnt_blue_1" style="border: none;"
										value="确认修改" /></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="blank"></div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
