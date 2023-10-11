<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>회원 추가 테스트(executeUpdate() 사용)</h2>
	<%
	JDBConnect jdbc = new JDBConnect();
	Connection con = jdbc.getConnetcion();
	String sql = "insert into member(id, pass,name) values(?,?,?)";
	String[] ids = {"musthave","willhave","dohave"};
	String[] names = {"머스트해브", "윌해브","두해브"};
	
	PreparedStatement psmt = con.prepareStatement(sql);
	int count = 0;
	for(int i=0; i<3; i++){
		psmt.setString(1, ids[i]);
		psmt.setString(2, "1234");
		psmt.setString(3, names[i]);
		
		count += psmt.executeUpdate();
		
	}
	
	out.println(count + "명 유저 생성");
	psmt.close();
	jdbc.close();
	
	%>
</body>
</html>