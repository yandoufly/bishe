<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生评教</title>
<link href="../css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="../js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="../css/ks.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<!-- 引入头部页面 -->
<%@ include file="./common/top.jsp" %>
<div class="page">
<div class="box mtop">
<!-- 引入左边页面 -->
<%@ include file="./common/left.jsp" %>
<div class="rightbox">


	<h2 class="mbx">教务中心 &gt; 课程评教</h2>
	<div class="morebt">


		<ul id="ulStudMsgHeadTab">
			<li><a class="tab1" onclick="" >课程评教</a></li>
			

			<span style="color: #ff0000; padding-left: 5px;" id="unreadSysMsgCount"></span>
					
					

		</ul>

	</div>
	<div class="cztable">
		<div id="main">
		<form action="${pageContext.request.contextPath}/student/addEvaluation.action" method="post">
        <div id="input_info">
            <h3>基本评教问题（必填）</h3>
        	<br>
        	选择课程：<select name="courseId">
        		<c:forEach items="${courseList }" var="course">
	        		<option value="${course.courseId }">课程名称：${course.name } && 教师名称：${course.teacherName }</option>
        		</c:forEach>
        	</select>
        	<br>
        	
            <ul>
            	<li>实验教学内容是否满意？<span><input type="radio" name="answer1" value="A">满意&nbsp;&nbsp;<input type="radio" name="answer1" value="B">一般&nbsp;&nbsp;<input type="radio" name="answer1" value="B">不好</span></li>
            	<li>实验老师授课感觉怎样？<span><input type="radio" name="answer2" value="A">满意&nbsp;&nbsp;<input type="radio" name="answer2" value="B">一般&nbsp;&nbsp;<input type="radio" name="answer2" value="B">不好</span></li>
            	<li>实验难度大吗？ <span><input type="radio" name="answer3" value="A">满意&nbsp;&nbsp;<input type="radio" name="answer3" value="B">一般&nbsp;&nbsp;<input type="radio" name="answer3" value="B">不好</span></li>
            	<li>实验安排感觉合理吗？<span><input type="radio" name="answer4" value="A">满意&nbsp;&nbsp;<input type="radio" name="answer4" value="B">一般&nbsp;&nbsp;<input type="radio" name="answer4" value="B">不好</span></li>
            	<li>实验老师会布置课后实验任务吗？<span><input type="radio" name="answer5" value="A">满意&nbsp;&nbsp;<input type="radio" name="answer5" value="B">一般&nbsp;&nbsp;<input type="radio" name="answer5" value="B">不好</span></li>
            	<li>实验老师会帮助解答实验中的疑问吗？<span><input type="radio" name="answer6" value="A">满意&nbsp;&nbsp;<input type="radio" name="answer6" value="B">一般&nbsp;&nbsp;<input type="radio" name="answer6" value="B">不好</span></li>
            	<li>实验建议：<textarea name="suggestion" cols="45" rows="5"></textarea></li>
            </ul>
        </div>
        <div id="submit_info"><button>确认提交</button></div>
    	</form>
    	</div>
	</div>
</div>
</div>
<div class="footer"></div></div>
</body>
</html>