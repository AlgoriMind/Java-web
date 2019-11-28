<%@ page language="java" import= "java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException"%>
<jsp:useBean id="register_information" class="com.information.Register_information"></jsp:useBean>
<jsp:useBean id="userDao" class="com.algorimind.UserDAO" scope="page"></jsp:useBean>
<jsp:setProperty name="register_information" property="*"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册提示信息</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<% out.println(userDao.register(register_information)); %><br>
	
	<a href="index.jsp" target="_blank">返回注册页面</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="log.jsp" target="_blank"> 返回登陆页面 </a>
</body>
</html>