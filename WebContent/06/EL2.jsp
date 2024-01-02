<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="text" name="id">
		<input type="password" name="pwd">
		
		val1 <input type="checkbox" name="val" value="val1">
		val2 <input type="checkbox" name="val" value="val2">
		val3 <input type="checkbox" name="val" value="val3">
		<button>로그인</button>
	</form>
	
	<h3><%=request.getParameter("id") %></h3>
	<h3><%=request.getParameter("pwd") %></h3>
	<h3>${param.id} / ${param["id"]}</h3>
	<h3>${param.pwd}</h3>
	
	<h3>${paramValues.val}</h3>
</body>
</html>