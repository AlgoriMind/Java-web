<%@ page language="java" import= "java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="java.io.IOException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册提示信息</title>
</head>
<body>
	<%!
		void insert(String number,String passwd) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/information?serverTimezone=GMT","root","death65god");
				String sql = "insert into demo values('" + number + "','" + passwd + "');";
				PreparedStatement statement =  connection.prepareStatement(sql);
				statement.execute();
				statement.close();
				connection.close();
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String number() {
			int[] a = new int[10];
			Random random = new Random();
			String str = new String();
			for(int i=0;i<10;i++) {
				a[i] = random.nextInt(10);
				str = str + String.valueOf(a[i]);
			}
			return str;
		}
	%>
	<% 
		if(new String(request.getParameter("passwd1")).equals("")==true){
			out.println("请输入密码后再注册!");
		}
		else if(new String(request.getParameter("passwd2")).equals("")==true){
			out.println("请再次确认密码后,再注册!");
		}
		else if(new String(request.getParameter("passwd1")).equals(new String(request.getParameter("passwd2")))==false){
			out.println("您两次输入的密码不一样,请重新输入!");
		}
		else {
			out.println("恭喜你注册成功,您的账号为:"+"<br>");
			String str = number();
			out.println("<h1>"+str+"</h1>");
			insert(str,new String(request.getParameter("passwd1")));
		}
	%>
</body>
</html>