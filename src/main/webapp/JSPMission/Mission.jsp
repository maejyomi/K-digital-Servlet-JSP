<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자유 낙하 물체의 위치 구하기</h2>
	<form action="./Mission.aaa">
		<table>
			<tr><td>초기 위치 </td><td><input type="text" name="x0" placeholder="m"/></td></tr>
			<tr><td>시간 </td><td><input type="text" name="t" placeholder="초"/></td></tr>
		</table>
		<input type="submit" value="계산하기">
	</form>
	
	<strong>${ resultMessage }</strong>

</body>
</html>