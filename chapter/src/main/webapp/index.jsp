<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ok.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		$(function(){
			$("#userid").keydown(function(event){
				if(event.keyCode==13){
					alert('您敲击了Enter键');
				}
			});
		});
	</script>
  </head>
  
  <body>
  <div>
  <h2>表的记录数：</h2>
    <form action="hello.do" method="post">
    	<input type="submit" value="submit"/>
    </form>
   </div>
   <form action="user/list.do" method="post">
   	<input type="text" name="userid"/>
   	<input type="submit" value="查询"/>
   </form>
   <div><input type="text" name="userid" id="userid"><a href="#">提交</a></div>
  </body>
</html>
