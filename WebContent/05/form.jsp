<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form metho="post">
		<input type="text" name="value1">
		<input type="text" name="value2">
		<button>전송</button>
	</form>
	<h3>value1 : ${param.value1 }</h3>
	<h3>value2 : ${param.value2 }</h3>
	<h3>${applicationScope.myAttr}</h3>
</body>
</html>