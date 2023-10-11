<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String sel = request.getParameter("sel");
	String val = request.getParameter("val");
	
	if(val == null || val.isEmpty()){
		response.sendRedirect("Gugudan3.jsp");
		return;
	}
	
	if(sel.equals("type1")){
		response.sendRedirect("Gugudan1.jsp?dan="+val);
	} else if(sel.equals("type2")){
		response.sendRedirect("Gugudan2.jsp?col="+val);
	}
	%>

</body>
</html>