<%@ page language="java" contentType="text/html; charset=UTF-8"%>



<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="../js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="../css/ks.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
   <!-- 引入头部页面 -->
<%@ include file="./common/top.jsp" %>
<div class="page">
<div class="box mtop">
<!-- 引入左边页面 -->
<%@ include file="./common/left.jsp" %>
   <div class="rightbox">
                
    <h2 class="mbx">
        教务中心 &gt; 我的报考</h2>
    <div class="morebt">
        <ul>
            <li><a class="tab1" href="s_test.html">我的报考</a></li>
            <li><a class="tab2" href="s_score.html">我的成绩</a></li>
            <li><a class="tab2" href="s_course_table.html">我的书籍</a></li>
            
        </ul>
    </div>



    <h2 class="mbx">
        教务中心 &gt; 我的报考 &gt; 查看考试时间</h2>
    <div class="cztable">
        <div class="tis red">
            注：请仔细查看考试计划以及考试时间，以免错过考试。
        </div>
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr align="center">
                <th style="text-align: center;">
                    课程代码名称
                </th>
                <th style="text-align: center;">
                    考试科目
                </th>
                <th style="text-align: center;">
                    考试地点
                </th>
                <th style="text-align: center;">
                    考试开始时间
                </th>
                <th style="text-align: center;">
                    考试结束时间
                </th>
            </tr>
            
            <tr style="height: 28px" class="tdbg" align="center">
                <td colspan="13" align="left" style="color: Red; font-weight: bold;">
                    未找到考试计划信息！
                </td>
            </tr>
            
        </table>
    </div>

            </div>
  </body>
</html>
