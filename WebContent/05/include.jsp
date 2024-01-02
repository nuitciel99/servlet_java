<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <jsp:include page="action.jsp"></jsp:include> --%>
<%-- <jsp:useBean id=""></jsp:useBean> --%>


<%-- <%= %> : 자바의 변수
	영역 객체의 attribute는 expresion에서 사용 불가 
	EL : expression language ${구문}
 --%>
 
 <form>
 	<input name = "id">
 	<input name = "pwd" type="password">
 	<button>전송</button>
 </form>
 
 <h1>id : <%=request.getParameter("id") %> </h1>
 <h1>pwd : <%=request.getParameter("pwd") %> </h1>
 <hr> 
 <h1>id : ${param.id}</h1>
 <h1>pwd : ${param.pwd}</h1>
 
</body>
</html>