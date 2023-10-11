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
	String scol = request.getParameter("col");
	int col = Integer.parseInt(scol);

	if (col == 1) {
		for (int i = 2; i <= 9; i++) {
			for (int j = 1; j <= 9; j++) {
		out.println(i + " * " + j + " = " + i * j + "<br>");
			}
			out.print("<br>");
		}
	} else {
	%>
	<table>
		<%
		for (int k = 1; k < 9; k += col) {
			for (int i = 1; i <= 9; i++) {
		%>
		<tr>
			<%
			for (int j = 1; j <= col; j++) {
				if ((k + j) > 9) {
					break;
				}
			%>
			<td style='padding: 0.5rem;'><%=(k + j)%> * <%=i%> = <%=((k + j) * i)%></td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>
		<td><br/></td>
		<%
		}
		%>
	</table>
	<%
	}
	%>
</body>
</html>