<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- action tag
	jsp:forward	| 요청과 응답을 다른 리소스로 전달
	jsp:include	| 다른 리소스를 포함
	jsp:useBean	| Bean 오브젝트를 작성 및 찾기
	jsp:setProperty	| Bean 객체의 속성 값을 설정
	jsp:getProperty	| Bean의 특성 값을 인쇄
	jsp:plugin | 애플릿과 같은 다른 구성 요소를 포함
	jsp:param | 매개 변수 값을 설정, 대부분 forward, include에서 사용
	jsp:fallback | 플러그인이 작동하는 경우 메시지를 인쇄하는 데 사용(jsp : plugin에서 사용)
 -->
 <!-- JSP Bean
 	데이터를 보여주는 기능과 단순하게 화면을 출력하는 부분이 하나의 JSP에 뒤섞여 있으면 문제가 생김. 
	기능을 확장하거나 코드를 재사용하기가 상당히 어려워짐. 따라서 JSP에서는 데이터를 자바빈(JavaBean)이라는 클래스에 담아서 값을 보여줌
	-------------------------------
	jsp:useBean id="BeanName" class="JavaBean className" scope="scope" : JavaBean 생성하고 초기화
	위 아래는 같음
	MemberBean member = (MemberBean)request.getAttribute("member");
	if(member == null){
	    member = new MemberBean();
	    request.setAttribute("member", member)
	}
	 id 속성에서 지정한 이름의 속성 값이 있을 경우 그 객체를 그대로 사용하고, 없을 경우 새로운 객체를 생성
	-------------------------
	jsp:setProperty name="BeanName" property="name" value="value" : JavaBean 내부의 필드 값을 설정하거나 객체의 상태를 변경
	jsp:getProperty name="BeanName" property="name" : JavaBean 내부의 필드 값을 읽거나 객체의 상태를 가져오는 데 사용
  -->

<jsp:forward page="../04/p4.jsp"></jsp:forward>

</body>
</html>