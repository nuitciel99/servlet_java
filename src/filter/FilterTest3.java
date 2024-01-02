package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

//@WebFilter(urlPatterns =  "/*", initParams = @WebInitParam(name = "msg", value = "hello annotation param"))
public class FilterTest3 implements Filter{
	private String msg;
	

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String msg = filterConfig.getInitParameter("msg");
		this.msg = msg;
		System.out.println(msg);
		filterConfig.getServletContext().setAttribute("myAttr", "초기 지정값"); // 전역 객체 
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		chain.doFilter(request, response);
		System.out.println(msg);
	}

}
