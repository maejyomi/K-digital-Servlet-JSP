<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./GugudanMain.jsp" method="get">
		<input type="radio" name="sel" value="type1">Type1<br/>
		<input type="radio" name="sel" value="type2" checked="checked">Type2<br/>
		<input type="text" name="val">단수/열수<br/>
		<input type="submit" value="선택">
	</form>
</body>
</html>