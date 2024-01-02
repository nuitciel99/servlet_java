<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="domain.Department"%>
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
		if(request.getParameter("deptno")== null){
			out.print("<h1>학과번호가 입력되지 않았습니다.</h1>");
			return;
		}
		Long deptno = Long.valueOf(request.getParameter("deptno").toString());
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "sample", "1234");
		PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM DEPARTMENT WHERE DEPTNO = ?");
		pstmt.setLong(1, deptno);
		ResultSet rs = pstmt.executeQuery();
		Department d = null;
		while(rs.next()){
			d = new Department(); 
			d.setDeptno(rs.getLong("deptno"));
			d.setDname(rs.getString("dname"));
			d.setCollege(rs.getLong("college"));
			d.setLoc(rs.getString("loc"));
		}
		if(d == null){
			out.print("<h1>학과번호가 존재하지 않았습니다.</h1>");
			return;
		}
	%>
	<form action="deptModify.jsp" method="post">
		<table border="1">
			<tr>
				<th>학과번호</th>
				<td><%=d.getDeptno() %></td>
			</tr>
			<tr>
				<th>학과이름</th>
				<td><input name="dname" value="<%=d.getDname() %>"></td>
			</tr>
			<tr>
				<th>상위학과번호</th>
				<td><input name="college" value="<%=d.getCollege() %>"></td>
			</tr>
			<tr>
				<th>위치</th>
				<td><input name="loc" value="<%=d.getLoc() %>"></td>
			</tr>
		</table>
		<input type="hidden" name="deptno" value="<%=d.getDeptno()%>">
		<button>수정</button>
		<a href="dept.jsp">목록</a>
	</form>
</body>
</html>