<%@page import="domain.Department"%>
<%@page import="domain.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- taglib directive 선언
core : 기본기능
fmt : 형식화 formatter
fn : 기능 functions(문자열)
xml : xml 문서 처리 목적
sql : sql crud 처리 목적
 --%>
 <c:set var="str" value="문자열 내용" scope="request"></c:set> <!-- attribute 지정  -->
 <h3>1 : <c:out value="${str}"/> <!-- attribute 출력 --></h3>
 <h3>2 : ${str}</h3>
 <h3><c:out value="str"/> <!-- attribute 출력 --></h3>
 <c:remove var="str" scope="page"/> <!-- attribute 제거 -->
 <h3><c:out value="${str}"/> <!-- attribute 출력 --></h3>
 
 <hr>
 <c:out value="${'<script>alert()</script>'}" ></c:out>
 
 <hr>
 <c:if test="true">
 <h1>true 출력</h1>
 </c:if>
 <c:set var="num" value="1"></c:set>
 <c:choose>
 	<c:when test="${num > 0}">
 		<h1>양수</h1>
 	</c:when>
 	<c:when test="${num < 0}">
 		<h1>음수</h1>
 	</c:when>
 	<c:otherwise>
 		<h1>0</h1>
 	</c:otherwise>
 </c:choose>
 
 <c:set var="dept" value="<%=new Department()%>" />
 <c:set property="deptno" target="${dept}" value="100" />
 <c:set target="${dept}" property="dname">
 	정보통신학과
 </c:set>
 <hr>
 <h3>${dept}</h3>
 
 <jsp:useBean id="dept2" class="domain.Department"/>
 <jsp:setProperty property="deptno" name="dept2" value="200"/>
 <h3>${dept2}</h3>
</body>
</html>