<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<br>
	<s:if test="pageResult.totalCount > 0">
		当前第 <s:property value="pageResult.pageNo"/> /<s:property value="pageResult.totalPageCount"/>  页
		
		<a href="javascript:doGoPage(<s:property value='1'/>)">首页</a>
		<s:if test="pageResult.pageNo > 1">
      		<a href="javascript:doGoPage(<s:property value='pageResult.pageNo-1'/>)">上一页</a>
   	    </s:if><s:else>上一页</s:else>
   	    
   	    &nbsp;&nbsp;
   	    
   	    <s:if test="pageResult.pageNo < pageResult.totalPageCount">
        	<a href="javascript:doGoPage(<s:property value='pageResult.pageNo+1'/>)">下一页</a>
        </s:if><s:else>下一页</s:else>
        <a href="javascript:doGoPage(<s:property value='pageResult.totalPageCount'/>)">末页</a>
        
        <span>
        	跳转到
        	<input id="pageNo" name="pageNo" type="text" style="width: 30px;" min="1" max="3" value="<s:property value='pageResult.pageNo'/>" /> 页
        		<input type="button" value="跳转" onclick="jumpTo(<s:property value='pageResult.totalPageCount'/>)" >
        		<%-- <a href="#" onclick="jumpTo(<s:property value='pageResult.totalPageCount'/>)">
        			<input type="button" value="跳转">
        		</a> --%>
        </span>
	</s:if><s:else>暂无数据！</s:else>
	<script type="text/javascript">
		//翻页
		function doGoPage(pageNo){
			document.getElementById("pageNo").value = pageNo;
			document.forms[0].action=list_url;
			document.forms[0].submit();
		}
		//输入跳转
		function jumpTo(maxPage){
			
			var page = $("#pageNo").val();
			if(page > maxPage || page < 1){
				alert("对不起，无法跳转到该页面");
			}else{
				document.forms[0].action=list_url;
				document.forms[0].submit();
			}
		}
	</script>
</div>
