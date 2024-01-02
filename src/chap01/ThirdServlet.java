package chap01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//extends HttpServlet > Override (alt + s + v)
@WebServlet("/third")
public class ThirdServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 한글 
		// HttpServletResponse : client에게 작업 내용을 전달해주는 객체
		// 따라서 resp.setContentType 시 client는 한글을 깨지지 않고 볼수 있음
		resp.setContentType("text/html; charset=utf-8");
		
		// HttpServletResponse 인터페이스의 상위 인터페이스인 ServletResponse의 getWriter() 메소드 호출
		// getWriter() : java.io의 PrintWriter 클래스 리턴, 바이트와 문자 타입, default ISO-8859-1
		// ISO-8859-1 : 8bit, 아스키코드 : 7비트
		
		// PrintWriter : print stream : prints text data to a character stream
		// getWriter() : Returns a PrintWriter object that can send character text to the client
		// 				>>> Calling flush() on the PrintWritercommits the response
		// flush() : Flushes the output stream and forces any buffered output bytes to be written out
		PrintWriter pw = resp.getWriter();
		pw.write("<!doctype html>\r\n");
		pw.write("<html>\r\n");
		pw.write("<head>\r\n");
		pw.write("<body>\r\n");
		pw.write("<h1>서블릿 하드코딩</h1>\r\n");
		pw.write("</body>\r\n");
		pw.write("</html>\r\n");
	}

}
