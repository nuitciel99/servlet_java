<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- param : 가장 인접한 값 담음 -->
	<a href="?value=10">링크</a>
	<h3>core1 : ${param.value}</h3>
	<h2>include</h2>
	<jsp:include page="core2.jsp">
		<jsp:param value="20" name="value"/>
	</jsp:include>
	<h2>import</h2>
	<c:import url="core2.jsp" var="core2" />
	${core2}
	<c:import url="core2.jsp" var="core3">
		<c:param name="value" value="30" />
	</c:import>
	${core3}
	<c:import url="core2.jsp?value=40" />
</body>
</html>