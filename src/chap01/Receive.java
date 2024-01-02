package chap01;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/rec")
public class Receive extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// getParameter : request parameter receive
		// Returns the value of a request parameter as a String,or null if the parameter does not exist. 
		// Request parameters are extra information sent with the request. 
		// For HTTP servlets, parameters are contained in the query string or posted form data. 
		// You should only use this method when you are sure the parameter has only one value. 
		// If the parameter might have more than one value, use getParameterValues
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		List<Map<String, String>> users = new ArrayList<>();
		Map<String, String> user = new HashMap<>();
		user.put("id", "hong");
		user.put("pwd", "1234");
		users.add(user);
		
		user = new HashMap<>();
		user.put("id", "kim");
		user.put("pwd", "1234");
		users.add(user);
		
		user = new HashMap<>();
		user.put("id", "lee");
		user.put("pwd", "5678");
		users.add(user);
		
		String result = users.stream().filter(m->m.get("id").equals(id) && m.get("pwd").equals(pwd)).count() > 0 ? "성공" :"실패";
		System.out.println(result);
	}

}
