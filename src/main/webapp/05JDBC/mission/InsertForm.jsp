<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertForm</title>
</head>
<body>
	<span style="color:red; font-size: 1.2rem;">
		<%= request.getAttribute("error") == null?
				"" : request.getAttribute("error") %>
	</span>
	<h2>회원가입</h2>
	<form action="InsertProcess.jsp" method="post">
		<table>
		<tr><td>아이디 </td> <td><input type="text" name="id" placeholder="아이디"></td></tr>
		<tr><td>비밀번호 </td> <td><input type="password" name="pwd" placeholder="비밀번호"></td></tr>
		<tr><td>이름 </td> <td><input type="text" name="name" placeholder="이름"></td></tr>
		<tr><td colspan="2"><input type="submit" value="가입하기" style='width: 100%; margin-top:1rem' /></td></tr>
		<tr><td colspan="2" ><a href="../../06Session/LoginForm.jsp" style="float:right">처음으로</a></td></tr>
		</table>	
	</form>
</body>
</html>