<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("requestString", "request 영역의문자열");
request.setAttribute("requestPerson", new Person("안중근", 31));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>request 영역의 속성값 삭제하기</h2>
	<%
	request.removeAttribute("requestString");
	request.removeAttribute("requestInteger");	
	%>
	<h2>request 영역의 속성값 읽기</h2>
	<%
	// request로 불러오면 항상 Object타입으로 불러오기 때문에 타입캐스팅 필요
	Person rPerson = (Person)(request.getAttribute("requestPerson")); 
	%>
	<ul>
		<li>String 객체 : <%= request.getAttribute("requestString") %></li>
		<li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %>
	</ul>
	<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
	<%
	// forward만 request 공유함, redirect는 하이퍼링크 클릭과 같은 원리라서 request를 공유하지 않음
	request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English")
		.forward(request, response);	
	
//	RequestDispatcher rd = request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English");
//	rd.forward(request, response);
	%>
</body>
</html>