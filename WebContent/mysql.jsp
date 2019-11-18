<%@page import="java.io.IOException"%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>数据库</title>
</head>
<body>
	<%!
		void select(JspWriter out) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/information?serverTimezone=GMT","root","death65god");
				String sql = "select * from demo";
				PreparedStatement statement = con.prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"账号:" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "密码:");
				while(rs.next()){
					String number = rs.getString("number");
					String passwd = rs.getString("passwd");
					out.println("<br>" + number + "&nbsp;&nbsp;&nbsp;&nbsp;" + passwd);
				}
				rs.close();
				statement.close();
				con.close();
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		void update(String number,String passwd,JspWriter out) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/information?serverTimezone=GMT","root","death65god");
				String sql = "update demo set passwd = '" + passwd + "'where number = " + number + ";";
				PreparedStatement statement =  connection.prepareStatement(sql);
				statement.execute();
				statement.close();
				connection.close();
				out.println("账号为" + number + "的密码更新为:" + passwd);			
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
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
		void delete(String number,JspWriter out) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/information?serverTimezone=GMT","root","death65god");
				String sql = "delete from demo where number = " + number;
				PreparedStatement statement = connection.prepareStatement(sql);
				statement.execute();
				statement.close();
				connection.close();
				out.println("账号为" + number + "的数据已删除!");
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	%>
	<% request.setCharacterEncoding("utf-8"); %>
	<% if(request.getParameter("username").equals("")==true) {
			out.println("请输入账号后再登录！");
		}
		else if(new String(request.getParameter("userwd")).equals("")==true) {
			out.println("请输入密码后再登陆！");
		}
		else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/information?serverTimezone=GMT","root","death65god");
				String number = request.getParameter("username");
				String passwd = new String(request.getParameter("userwd"));
				String sql = "select * from demo where number = '" + number + "'";
				PreparedStatement statement =  connection.prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				if(rs.next()) {
					if(rs.getString("passwd").equals(passwd)) {
						out.println("恭喜你，登陆成功！");
					}
					else {
						out.println("您输入的密码不正确，请重新输入！");
					}
				}
				else {
					out.println("您输入的账号不存在，请注册后再登陆！");	
				}
				statement.execute();
				statement.close();
				connection.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	%>
</body>
</html>