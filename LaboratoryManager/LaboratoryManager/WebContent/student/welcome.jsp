<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生主界面</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="/student/common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="/student/common/left.jsp"%>
			<div class="rightbox">
				欢迎学生<font color="red">${user.account }</font> 登录
				 <div class="dhbg">
        <div class="dh1" style="margin: 0 27px 15px 0;">
            <div class="dhwz">
                
                <p>
                    欢迎 <span class="red">登陆学生管理系统</span> 
                </p>
                <p>
                    欢迎<span class="red">进入个人信息页面
                <div class="btright">
                    <a href="${pageContext.request.contextPath}/student/showUI.jsp">查看个人信息</a>
                       </div>
            </div>
        </div>
        <div class="dh2">
            <div class="dhwz">
                <p>
                    实验室教学管理系统 <span class="red">学生管理后台</span> </p>
                <p>
                    欢迎进入<span class="red">查看问题</span>
                </p>
               
                <div class="btright">
                    <a href="${pageContext.request.contextPath}/student/courseChoosePage.action">实验选课</a>
                        </div>
            </div>
        </div>
        <div class="dh3" style="margin: 0 27px 15px 0;">
            <div class="dhwz">
                <p>
                    实验室教学管理系统 <span class="red">学生管理后台</span> </p>
                <p>
                    欢迎进入<span class="red">查看问题页面</span> </p>
                </p>
               
                <div class="btright">
                    <a href="${pageContext.request.contextPath}/student/questionList.action">
                        查看问题</a></div>
            </div>
        </div>
        <div class="dh4">
            <div class="dhwz">
                <p>
                    实验室教学管理系统<span class="blue">学生管理后台</span> </p>
                <p>
                    欢迎进入<span class="red">课程评教模块</span> </p>
                
                <div class="btright">
                    <a href="${pageContext.request.contextPath}/student/teachEvaluat.action">课程评教</a>
                      </div>
            </div>
        </div>
    </div>
				
			</div>
		</div>
	</div>
</body>
</html>
