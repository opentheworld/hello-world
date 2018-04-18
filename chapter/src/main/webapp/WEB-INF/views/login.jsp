<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/login.css">

  </head>
  
  <body>
    <div id="login">
    	<p>用户登录</p>
    	<div class="login-body">
    	<form action="user/login.do" method="post">
    		<table height="100px" cellpadding="4" bordercolor="yellow">
    			<tr><td align="left">管理员：<input type="radio" name="gl" value="admin" checked/></td><td>普通用户：<input type="radio" name="gl" value="public"/></td></tr>
		    	<tr align="left"><td>账&nbsp;&nbsp;&nbsp;&nbsp;号：</td><td><input type="text" name="username" required/></td></tr>
		    	<tr align="left"><td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" name="password" required/></td></tr>
		    	<tr><td align="left"><input type="submit" value="登录"/></td><td align="left"><input type="button" value="取消"/></td>
		    	</tr>
	    	</table>
    	</form>
    	</div>
    </div>
  </body>
</html>
