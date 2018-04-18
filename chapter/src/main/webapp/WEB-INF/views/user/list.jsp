<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user list</title>
<script type="text/javascript">
window.onload=function(){
	var name = localStorage.username;
	name = localStorage["username"];
	if(!name){
		name = prompt("what is your name?");
		localStorage.username = name;
	}
	for(var name in localStorage){
		var value = localStorage[name];
		alert(value);	
	}
}
</script>
</head>
<body>
用户名：${user.username }
密码：${user.password }
上次登录时间：<c:choose>
			<c:when test="${empty user.lastvisit}">空</c:when>
			<c:otherwise>${user.lastvisit }</c:otherwise>
		</c:choose>
上次登录IP：<c:choose>
			<c:when test="${empty user.lastip}">空</c:when>
			<c:otherwise>${user.lastip }</c:otherwise>
		</c:choose>

</body>
</html>