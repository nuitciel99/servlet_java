package chap01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// servlet 구현
// 1. HttpServlet을 상속
// 2. 메서드 구현
// 3. 서블릿 매핑 (web.xml)

// extends HttpServlet > Override (alt + s + v) 
public class FirstServlet extends HttpServlet{
// HttpServletRequest : request 정보를 servlet에게 전달, client가 전달한 데이터를 담고 있는 객체
// HttpServletResponse : servlet은 HttpServletResponse객체에 content-type, 응답 코드, 응답 메세지 등을 담아서 전송
// 						 출력 스트림을 받기 위해 주로 response로부터 writer 객체를 얻어서 내보냄
// 						 client에게 작업 결과를 보내주는 객체
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hello Servlet");
		resp.getWriter().println("Hello Servlet restart");
	}
	
}
