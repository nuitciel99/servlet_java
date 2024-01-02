<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.Department"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<table border="1" width="600">
	<tr>
		<th>학과번호</th>
		<th>학과이름</th>
		<th>상위학과번호</th>
		<th>위치</th>
	</tr>

	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "sample", "1234");
	PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM DEPARTMENT");
	ResultSet rs = pstmt.executeQuery();
	List<Department> departments = new ArrayList<>();
	while(rs.next()){
		Department d = new Department(); 
		d.setDeptno(rs.getLong("deptno"));
		d.setDname(rs.getString("dname"));
		d.setCollege(rs.getLong("college"));
		d.setLoc(rs.getString("loc"));
		departments.add(d);
	}
	for(Department d : departments){
	%>
	<tr>
		<td><a href="deptDetail.jsp?deptno=<%=d.getDeptno()%>"></td>
		<td><%=d.getDname()%></td>
		<td><%=d.getCollege()%></td>
		<td><%=d.getLoc()%></td>
	</tr>
	<%
	}
	%>
</table>
</body>
</html>