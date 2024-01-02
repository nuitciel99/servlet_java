<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	// EL : js 구문 X, jsp 구문 O
	// 화면에 특정 값을 표현하기 위해 사용되는 언어
	
	// ex) 영역 객체에 갑을 지정(request scopre)
	// List<String> 형태 attribute name : strings["가나다라", "1234", "ABCD"]
			
	// 지정 코드 작성
	
	// forward 
	// EL2.jsp 작성 후 이 위치에서 strings 내부의 값을 개별 확인
	// EL의 액세스 이름은 attribute
	List<String> list = new ArrayList<>();
	list.add(1, "가나다라");
	list.add(2, "1234");
	list.add(3, "ABCD");
	
	request.setAttribute("strings", list);
	
	/* for(int i = 0; i<name.size(); i++){
		System.out.println(name.get(i));
	} */
%>
<jsp:forward page="EL2.jsp"></>
</body>
</html>