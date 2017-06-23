<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<link href="themes/ecmoban_m182012/style.css" rel="stylesheet"
	type="text/css" />
<div id="topNav" class="">
	<div class="block clearfix">
		<div class="f_r">
			<s:if test="#session.userid == null">
				<font id="ECS_MEMBERZONE"> 欢迎光临本店，<a
					href="index/preLogin.action">[用户登录]</a>&nbsp;<a
					href="index/preReg.action">[用户注册]</a>
				</font>
			</s:if>
			<s:if test="#session.userid != null">
				<font id="ECS_MEMBERZONE"> 欢迎光临本店${sessionScope.username }， <a
					href="index/usercenter.action">[用户中心]</a>&nbsp; <a
					href="index/exit.action">[退出系统]</a>
				</font>
			</s:if>
		</div>
	</div>
</div>
<div class="block clearfix" style="position: relative; height: 69px;">
	<div class="f_l" style="padding-top: 15px">
		<a href="index.jsp" name="top"><img
			src="themes/ecmoban_m182012/images/logo.gif" /> </a>
	</div>
	<div id="search" class="clearfix">
		<form id="searchForm" name="searchForm" method="post"
			action="index/query.action">
			<div class="search_bg">
				<input style="float: left" name="name" type="text" id="name"
					value="" onclick="javascript:this.value=''" class="B_input" />
			</div>
			<input type="submit" value="" class="go" style="cursor: pointer;" />
		</form>
		<div class="keys "></div>
	</div>
</div>
<div class="blank"></div>

<div id="mainNav" class="clearfix">
	<div class="block"
		style="background: url(themes/ecmoban_m182012/images/meun_bg2.gif) no-repeat; position: relative; z-index: 999;">
		<ul class="u1">
			<a class="a1" href="index.jsp">首页 </a>
		</ul>
		<img style="float: left; padding-top: 12px;"
			src="themes/ecmoban_m182012/images/meun_line.gif">
		<ul class="u1">
			<a class="a1" href="index/article.action">新闻公告 </a>
		</ul>
		<s:iterator value="map.cateList">
			<img style="float: left; padding-top: 12px;"
				src="themes/ecmoban_m182012/images/meun_line.gif">
			<ul class="u1">
				<a class="a1" href="index/cate.action?id=${cateid }">${catename }</a>
			</ul>
		</s:iterator>
		<img style="float: left; padding-top: 12px;"
			src="themes/ecmoban_m182012/images/meun_line.gif">
		<ul class="u1">
			<a class="a1" href="index/allbbs.action">留言板 </a>
		</ul>
	</div>
</div>
<div class="blank"></div>


<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
	<TBODY>
		<TR>
			<TD height="28" width="100%"><MARQUEE scrollAmount=4
					scrollDelay=90 direction=rtl> 欢迎访问 ${title } </MARQUEE></TD>
		</TR>
	</TBODY>
</TABLE>