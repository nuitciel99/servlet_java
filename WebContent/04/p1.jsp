<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		pageContext(현재 jsp), request(한 번 요청에만 유효), session, application(서버 전역)
	 -->
	<%
		application.setAttribute("value", "1234");
		pageContext.setAttribute("pc", "pc");
		request.setAttribute("r", "r");
	%>
	<h1>p1 입니다</h1>
	<%@ include file="p2.jsp" %>
	<h3>p1.p : <%=request.getParameter("p")%></h3>
	<h3><%=request%></h3>
</body>
</html>