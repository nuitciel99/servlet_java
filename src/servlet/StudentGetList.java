package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import service.StudentService;

@WebServlet("/studentList")
public class StudentGetList extends HttpServlet{
	private StudentService service = new StudentService();
	// Gson : 자바 객체를 JSON으로 변환하는 라이브러리
	// 		  JSON의 자바 오브젝트의 직렬화, 역직렬화를 해주는 오픈 소스 자바 라이브러리
	private Gson gson = new Gson();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String json = gson.toJson(service.getList());
		System.out.println(json);
		
		// mine-type
		resp.setContentType("application/json; charset=utf-8");
		resp.getWriter().print(json);
	}

}
