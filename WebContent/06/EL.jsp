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
<%-- EL : expression language 표현 언어 (직관적), js 표현식과 비슷
	expression <%=expre%>
	EL ${expr}
	
	웹페이지에 표시하는 목적
 --%>
 <h3><%="Hello" %></h3>
 <h3>${"hello"}</h3>
 <h3>문자열 : ${'hello'}</h3>
 <h4>정수 : ${4}</h4>
 <h4>실수 : ${4.5}</h4>
 <h4>논리 : ${false}</h4>
 <h4>null : ${null}</h4>
 <%-- 표현 언어 내부에서 연산자 사용 가능
 	산술 : + - * / % div mod
	비교 : ==(eq) !=(ne) <(lt) >(gt) <=(le) >=(ge)  
 	논리 : &&(and) ||(or) !(not)
 	삼항연산 : ? :
 	null 체크 연산 : empty
  --%>
<hr>
<h3>\${5+2} : ${5+2}</h3>
<h3>\${5-2} : ${5+2}</h3>
<h3>\${5*2} : ${5-2}</h3>
<h3>\${5/2} : ${5/2}</h3>
<h3>\${5%2} : ${5%2}</h3>
<%-- <h3>\${5 div 2} : ${5 div 2}</h3> --%><%-- 
<h3>\${5 mod 2} : ${5 mod 2}</h3> --%>
<h3>\${5 == 2} : ${5 == 2}</h3>
<h3>\${5 eq= 2} : ${5 eq 2}</h3>
<h3>\${5 != 2} : ${5 != 2}</h3>
<%-- <h3>\${5 ne 2} : ${5 ne 2}</h3> --%>
<h3>\${5 < 2} : ${5 < 2}</h3>
<h3>\${5 lt 2} : ${5 lt 2}</h3>
<h3>\${5 > 2} : ${5 > 2}</h3>
<h3>\${5 gt 2} : ${5 gt 2}</h3>
<h3>\${5 <= 2} : ${5 <= 2}</h3>
<h3>\${5 le 2} : ${5 le 2}</h3>
<h3>\${5 >= 2} : ${5 >= 2}</h3>
<h3>\${5 ge 2} : ${5 ge 2}</h3>

<hr>
<h3>\${5 > 2 && 5 < 2} : ${5 > 2 && 5 < 2}</h3>
<h3>\${5 > 2 and 5 < 2} : ${5 > 2 and 5 < 2}</h3>
<h3>\${5 > 2 || 5 < 2} : ${5 > 2 || 5 < 2}</h3>
<h3>\${5 > 2 or 5 < 2} : ${5 > 2 or 5 < 2}</h3>
<h3>\${ !(5 > 2) } : ${!(5 > 2)}</h3>
<h3>\${ not(5 > 2) } : ${not(5 > 2)}</h3>

<h3>\${ empty null } : ${empty null}</h3>
<h3>\${ not empty null } : ${not empty null}</h3>

<%
	Object obj1 = null;
	Object obj2 = new Object();
	
	List<String> list1 = new ArrayList<>();
	list1.add("문자");
	List<String> list2 = new ArrayList<>();
	
	request.setAttribute("obj1", obj1);
	request.setAttribute("obj2", obj2);
	request.setAttribute("list1", list1);
	request.setAttribute("list2", list2);

%>
<hr>
<h3>\${ empty obj1 } : ${ empty obj1 }</h3>
<h3>\${ empty obj2 } : ${ empty obj2 }</h3>
<h3>\${ empty list1 } : ${ empty list1 }</h3>
<h3>\${ empty list2 } : ${ empty list2 }</h3>

<h3>empty 연산자가 참이 되는 조건 : null or iterable 객체의 길이 0</h3>
<hr>
<%-- parameter 처리를 위한 el표현
	 param
	 paramValues
 --%>
</body>
</html>