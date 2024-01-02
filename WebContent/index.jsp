<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<h1>Hello JSP</h1>
	<table border="1" >
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>학년</th>
			<th>생년월일</th>
			<th>학과번호</th>
			<th>교수번호</th>
		</tr>
	</table>
	<script>
	$.ajax("studentList", {
		success : function(data){
			console.log(data);
			let str = "";
			for(let i of data){
				str += `<tr>
				<td>\${i.studno}</td>
				<td>\${i.name}</td>
				<td>\${i.grade}</td>
				<td>\${i.birthdate}</td>
				<td>\${i.deptno}</td>
				<td>\${i.profno}</td>
				</tr>
				`;
			}
			$("table").append(str);
		}
	})
	</script>
</body>
</html>