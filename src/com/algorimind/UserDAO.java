package com.algorimind;

import com.information.*;
import java.sql.*;
import java.util.Random;

public class UserDAO {
	public String userLogin(User user) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/information?serverTimezone=GMT", "root", "death65god");
			String number = user.getUsername();
			String passwd = new String(user.getUserwd());
			String sql = "select * from demo where number = '" + number + "'";
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				if (rs.getString("passwd").equals(passwd)) {
					rs.close();
					statement.close();
					connection.close();
					return "恭喜你，登陆成功！";
				} else {
					rs.close();
					statement.close();
					connection.close();
					return "您输入的密码不正确，请重新输入！";
				}
			} else {
				rs.close();
				statement.close();
				connection.close();
				return "您输入的账号不存在，请注册后再登陆！";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String number() {
		int[] a = new int[10];
		Random random = new Random();
		String str = new String();
		for (int i = 0; i < 10; i++) {
			a[i] = random.nextInt(10);
			str = str + String.valueOf(a[i]);
		}
		return str;
	}

	public String register(Register_information m_strregister) {
		if (m_strregister.getPasswd1().equals(m_strregister.getPasswd2()) == false) {
			return "您两次输入的密码不一样,请重新输入!";
		} else {
			String str = number();
			TestMySQL mysql = new TestMySQL();
			mysql.insert(str, m_strregister.getPasswd1());
			return "恭喜你注册成功,您的账号为:" + "<br>" + "<h1>" + str + "</h1>";
		}
	}

}
