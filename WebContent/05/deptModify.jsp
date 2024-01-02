<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dept" class="domain.Department" scope="application"/>
<jsp:setProperty property="*" name="dept"/>
<%-- <jsp:setProperty property="loc" name="dept" param="dname"/> --%>
<h3>${dept}</h3>
<h3><%=dept%></h3>
<%
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "sample", "1234");
	PreparedStatement pstmt = conn.prepareStatement("UPDATE DEPARTMENT SET DNAME = ?, COLLEGE = ?, LOC = ? WHERE DEPTNO = ?");
	pstmt.setString(1, dept.getDname());
	pstmt.setLong(2, dept.getCollege());
	pstmt.setString(3, dept.getLoc());
	pstmt.setLong(4, dept.getDeptno());
	
	pstmt.executeUpdate();
	response.sendRedirect("dept.jsp");
%>
</body>
</html>