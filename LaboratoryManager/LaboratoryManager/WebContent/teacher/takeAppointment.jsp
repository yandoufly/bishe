<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约实验室</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	
</script>
</head>

<body>
	<%@ include file="common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="common/left.jsp"%>
			<div class="rightbox">
				<h2 class="mbx">教师 &gt; 实验室预约</h2>
	            <div class="morebt">
	                <ul id="ulStudMsgHeadTab">
	                    <li><a class="tab1" onclick="" href="${pageContext.request.contextPath}/teacher/takeAppointmentPage.action">实验室预约</a> </li>
	                    <li><a class="tab2" onclick="" href="${pageContext.request.contextPath}/teacher/course_listUI.action">实验课表</a></li>
	                    <li><a class="tab2" onclick="" href="${pageContext.request.contextPath }/teacher/course_addUI.action">预约课程</a></li>
	                </ul>
	            </div>
	            <div class="cztable">
	            	查询实验室占用情况：<br>
	            	实验室:
            		<select id="classroomId" name="appointment.classroomId">
		                <option value="">请选择</option>
		                <c:forEach items="${classroomList}" var="classroom">
		                	<option <c:if test="${appointment.classroomId eq classroom.classroomId}">selected</c:if> value="${classroom.classroomId }">编号：${classroom.classroomId } 名称：${classroom.name } 类型：${classroom.type } 容纳人数：${classroom.capacity }</option>
		                </c:forEach>
		            </select>
	            	&nbsp;&nbsp;
	             	星期几：
	             	<select id="whatday" name="appointment.whatday">
		                <option value="0">请选择</option>
		                <option value="1">星期一</option>
		                <option value="2">星期二</option>
		                <option value="3">星期三</option>
		                <option value="4">星期四</option>
		                <option value="5">星期五</option>
		                <option value="6">星期六</option>
		                <option value="7">星期日</option>
		            </select>
	                &nbsp;&nbsp;
	                                                第几节:
	                <select id="part" name="appointment.part">
		                <option value="0">请选择</option>
		                <option value="1">第一节</option>
		                <option value="2">第二节</option>
		                <option value="3">第三节</option>
		                <option value="4">第四节</option>
		                <option value="5">第五节</option>
		                <option value="6">第六节</option>
	            	</select>
	                &nbsp;&nbsp;
	                <input type="button" value="查询" onclick="doSearch()">
	                <br><br>
	                <script type="text/javascript">
	                	function doSearch(){
	                		$("#appointmentTab  tr:not(:first)").empty(""); //清空之前的数据
	                		var classroomId = $("#classroomId").val();
	                		var whatday = $("#whatday").val();
	                		var part = $("#part").val();
	                		var url="${pageContext.request.contextPath }/teacher/getAllAppointment.action";
	            			var args={"appointment.classroomId":classroomId, "appointment.whatday":whatday , "appointment.part":part };
	            			$.getJSON(url,args,function(data){
	            				if(data.length==0){
	            					alert("暂无数据！！");
	            				}else{
	            					for(var i=0;i<data.length;i++){
	            						var courseId=data[i].courseId;
	            						var courseName=data[i].courseName;
	            						var teacher=data[i].teacher;
	            						var classroomId=data[i].classroomId;
	            						var personcount=data[i].personcount;
	            						var startWeek=data[i].startWeek;
	            						var endWeek=data[i].endWeek;
	            						var whatday=data[i].whatday;
	            						var part=data[i].part;
	            						$("#appointmentTab").append("<tr align='center'>"
	            		                        +"<td>"+courseId+"</td>"
	            		                        +"<td>"+courseName+"</td>"
	            		                        +"<td>"+teacher+"</td>"
	            		                        +"<td>"+classroomId+"</td>"
	            		                        +"<td>"+startWeek+"</td>"
	            		                        +"<td>"+endWeek+"</td>"
	            		                        +"<td>"+whatday+"</td>"
	            		                        +"<td>"+part+"</td>"
	            		                        +"</tr>");
	            					} 
	            				}
	                		});
	                		
	                	}
					</script>
	                <table id="appointmentTab" width="100%" border="0" cellspacing="0" cellpadding="0">
	                    <tr>
	                        <th>课号</th>
	                        <th>实验名称</th>
	                        <th>实验教师</th>
	                        <th>实验地点</th>
	                        <th>开始时期</th>
	                        <th>结束日期</th>
	                        <th>星期几</th>
	                        <th>第几节课</th>
	                    </tr>
	                </table>
	            </div>
	
	            <div class="cztable">
	            	<form id="form12" action="" method="post">
		                <table width="100%" cellpadding="0" cellspacing="0">
		                    <tr>
		                        <td colspan="2" align="right" width="80">选择课程：</td>
		                        <td>
		                        	<select id="courseId" name="appointment.courseId">
						                <option value="">-----------请选择----------</option>
						                <c:forEach items="${courseList}" var="course">
						                	<option value="${course.courseId }">课程编号：${course.courseId}, 课程名字：${course.name}, 教师名字：${course.teacherName}, 课程类型：${course.type}, 选课人数：${course.number} </option>
						                </c:forEach>
						            </select>
		                        </td>
		                    </tr>
		                    <tr>
		                        <td align="right">开始日期：</td>
		                        <td>
		                            <select id="startWeek" name="appointment.startWeek">
		                                <option value="0">请选择</option>
		                                <option value="1">1</option>
		                                <option value="2">2</option>
		                                <option value="3">3</option>
		                                <option value="4">4</option>
		                                <option value="5">5</option>
		                                <option value="6">6</option>
		                                <option value="7">7</option>
		                                <option value="8">8</option>
		                                <option value="9">9</option>
		                                <option value="10">10</option>
		                                <option value="11">11</option>
		                                <option value="12">12</option>
		                                <option value="13">13</option>
		                                <option value="14">14</option>
		                                <option value="15">15</option>
		                                <option value="16">16</option>
		                                <option value="17">17</option>
		                                <option value="18">18</option>
		                                <option value="19">19</option>
		                                <option value="20">20</option>
		                            </select>
		                        </td>
		                        <td align="right">结束日期：</td>
		                        <td>
		                            <select id="endWeek" name="appointment.endWeek">
		                                <option value="0">请选择</option>
		                                <option value="1">1</option>
		                                <option value="2">2</option>
		                                <option value="3">3</option>
		                                <option value="4">4</option>
		                                <option value="5">5</option>
		                                <option value="6">6</option>
		                                <option value="7">7</option>
		                                <option value="8">8</option>
		                                <option value="9">9</option>
		                                <option value="10">10</option>
		                                <option value="11">11</option>
		                                <option value="12">12</option>
		                                <option value="13">13</option>
		                                <option value="14">14</option>
		                                <option value="15">15</option>
		                                <option value="16">16</option>
		                                <option value="17">17</option>
		                                <option value="18">18</option>
		                                <option value="19">19</option>
		                                <option value="20">20</option>
		                            </select>
		                        </td>
		                    </tr>
		                    <tr><td colspan="4" align="left"></td></tr>
		                    <tr>
		                        <td align="right">星期几：</td>
		                        <td>
		                            <select id="whatday" name="appointment.whatday">
		                                <option value="0">请选择</option>
		                                <option value="1">1</option>
		                                <option value="2">2</option>
		                                <option value="3">3</option>
		                                <option value="4">4</option>
		                                <option value="5">5</option>
		                                <option value="6">6</option>
		                                <option value="7">7</option>
		
		                            </select>
		                        </td>
		                        <td align="right">第几节课：</td>
		                        <td>
		                            <select id="part" name="appointment.part">
		                                <option value="0">请选择</option>
		                                <option value="1">1</option>
		                                <option value="2">2</option>
		                                <option value="3">3</option>
		                                <option value="4">4</option>
		                                <option value="5">5</option>
		                               <option value="6">6</option>
		                            </select>
		                        </td>
		
		                    </tr>
		                    <tr align="center">
		                        <td colspan="5" height="40">
		                            <div align="center">
		                                <input type="submit" value="确认" onclick="javescript:doSubmit()" class="input2" />
		                            </div>
		                        </td>
		                    </tr>
		                </table>
		                <input id="classroomId2" type="hidden" name="appointment.classroomId" value="scsde">
		                <input type="hidden" name="appointment.teacher" value="${session.user.name }">
	                </form>
	                <script type="text/javascript">
	                	function doSubmit(){
	                		$("#classroomId2").attr("value", $("#classroomId").val());
	                		document.forms[0].action = "${pageContext.request.contextPath}/teacher/takeAppointment.action";
	                		document.forms[0].submit();
	                	}
	                </script>
	            </div>
				
	        </div>
	    </div>
	</div>
</body>
</html>
