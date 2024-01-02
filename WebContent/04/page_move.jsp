<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// url 겹치는지, server url 겹치는지, jsp 주소 오류 확인

	// request : method(get, post...) >> url 
	// response
	
	// 404 not found : 준비된 재료가 없는데 요청
	// 405 method not allowed : 준비된 방식이 아닌 형태의 요청
	// 1.jsp   2.jsp
	
	// 1. a 태그 href="url"로 클릭 시 이동 (location.href) >> HTML
	// 2. form action="url"로 submit 시 이동 (get, post)  >> HTML
	
	// 3. js사용 location 내의 replace(url), href='url' 교체 >> JS
	
	// 4. response.sendRedirect(url) >> JSP(java) 
	
	// -----------------------------------------------------
	
	// isErrorPage, errorPage
	// include
	// forward
	
	// 영역 객체 (attribute로 정의한 속성의 유지 범위)
	// pageContext(현재 jsp), request, session, application(서버 전역)
%>
</body>
</html>