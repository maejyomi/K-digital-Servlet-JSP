<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="membership.MemberDAO" %>
<%@ page import="membership.MemberDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");

String driver = application.getInitParameter("MySQLDriver");
String url = application.getInitParameter("MySQLURL");
String did = application.getInitParameter("MySQLId");
String dpwd = application.getInitParameter("MySQLPwd");

if(id == "" || pwd == "" || name == ""){
	response.sendRedirect("InsertForm.jsp");
}
else {
	MemberDAO dao = new MemberDAO(driver, url, did, dpwd);
	if(dao.insertMember(id, pwd, name)){
		response.sendRedirect("InsertSuccess.jsp");
	} else {
		request.setAttribute("error", "이미 존재하는 아이디입니다.");
		request.getRequestDispatcher("InsertForm.jsp").forward(request, response);
	}
	
}

%>
