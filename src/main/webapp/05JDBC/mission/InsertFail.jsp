<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>데이터 입력 실패</h2>
	<%
	String error = (String) request.getAttribute("error");
	String[] arr = error.split(" ");
	
	%>
	<p><%= arr[2] %>은(는) 이미 존재하는 아이디 입니다.</p>
	<a href="InsertForm.jsp">처음으로</a>
	
	
</body>
</html>