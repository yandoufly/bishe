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
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="<%=basePath%>">首页</a>
			<code> &gt; </code>
			留言区
		</div>
	</div>
	<div class="blank"></div>
	<div class="block">
		<div class="box">
			<table cellspacing="0" cellpadding="0" width="100%" id="ajaxtable">
				<tbody style="table-layout: fixed;">
					<tr class="tr2">
						<td style="width: 62%" class="tac">文章</td>
						<td style="width: 10%" class="y-style">发布日期</td>
						<td style="width: 6%" class="y-style">点击数</td>
						<td style="width: 17%" class="y-style">回复数</td>
					</tr>
					<s:iterator value="map.bbsList">

						<tr align="center" class="tr3 t_one">
							<td style="text-align: left; padding-left: 8px" id="">
								<h3>
									<a href="index/readbbs.action?id=${bbsid }" target="_blank"
										title="标题：${title }"><font class="p14"> ${title }</font> </a>
								</h3>
							</td>
							<td class="tal y-style">
								<div class="f10">${addtime }</div> ${username }
							</td>
							<td class="tal f10 y-style">${hits }</td>
							<td class="tal y-style">${repnum }</td>
						</tr>
					</s:iterator>
					<tr>
						<td style="height: 8px"></td>
					</tr>
				</tbody>
			</table>
			<s:if test="#session.userid != null">
				<form method="post" action="index/addbbs.action">
					<div class="t">
						<table cellpadding="0" cellspacing="0" align="center">
							<tbody>
								<tr>
									<td class="h" colspan="3"><b>发表帖子</b></td>
								</tr>
							</tbody>
							<tbody>
								<tr class="tr3 f_one">
									<th width="20%" class="t_one"><b>标题</b></th>
									<th><input class="input" name="bbs.title" id='title'
										size="60" value="" tabindex="1"
										style="font: 14px Tahoma; padding-left: 2px" /></th>
								</tr>
							</tbody>

							<tbody>
								<tr class="tr3 f_two">
									<th width="20%" class="t_one"><b>内容</b></th>
									<th colspan="2">
										<div class="wysiwyg"
											style="padding: 0x; border: 1px solid #DDDDDD; margin-bottom: 5px;">
											<textarea cols="80" id="contents" name="bbs.contents"
												rows="10">在此添加内容</textarea>
											<script type="text/javascript">
												CKEDITOR.replace('contents', {
													language : 'zh-cn'
												});
											</script>
										</div>
									</th>
								</tr>
							</tbody>
						</table>
					</div>
					<div style="margin: 15px 0 15px 0; text-align: center;">
						<input class="btn" type="submit" value="提 交" name="Submit"
							tabindex="3" />
					</div>
				</form>
			</s:if>
		</div>
		<div class="blank5"></div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
