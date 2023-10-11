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
	<h2>게시판 추가 테스트(executeUpdate() 사용)</h2>
	<%
	JDBConnect jdbc = new JDBConnect();
	Connection con = jdbc.getConnetcion();
	String sql = "insert into board(title, content,id) values(?,?,?)";
	String[] ids = {"musthave","willhave","dohave"};
	
	PreparedStatement psmt = con.prepareStatement(sql);
	int count = 0;
	for(int i=0; i<3; i++){
		for(int j=1; j<11; j++){
			psmt.setString(1, "제목"+j+"입니다.");
			psmt.setString(2, "내용"+j+"입니다.");
			psmt.setString(3, ids[i]);
			
			count += psmt.executeUpdate();
		}
	}
	out.println("총 "+ count + "건이 입력되었습니다.");
	psmt.close();
	jdbc.close();
	
	%>
</body>
</html>