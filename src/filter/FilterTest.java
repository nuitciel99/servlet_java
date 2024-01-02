package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FilterTest implements Filter{
	private String encoding;
	
	/* Servlet Filter
	 * 웹 브라우저(Web Browser)에서 Servlet에 Request(요청) 하기 전이나 
	 * Servlet에서 웹 브라우저로 Response(응답) 하기 전에 필터링(별도의 작업을 처리)
	 * Servlet 보다 먼저 처리됨
	 * 
	 * FilterConfig 
	 * >> 필터의 초기화 매개변수 
	 *   web.xml에서 인자값을 넘겨줌, 필터 객체에서 사용할 값을 외부에서 설정하여 읽어들임
	 * init()
	 * >> 서블릿 필터의 초기화 단계에서 호출되며 필터의 설정과 초기화 작업
	 *   The servlet container calls the init method exactly once after instantiating the filter
	 *   The init method must complete successfully before the filter is asked to do any filtering work
	 */
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.encoding = filterConfig.getInitParameter("encoding");
	}
	
	
	/*
	 * FilterChain : web.xml에서 설정한 filter-mapping에 대한 정보를 가짐, req에 대한 filter 실행 순서를 알고 있는 객체 : 흐름 제어
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 여러 서블릿, jsp에서 공통으로 해야할 작업을 사전 정리 
		request.setCharacterEncoding("utf-8");
		
		System.out.println("요청 시 할 일");
		
		chain.doFilter(request, response); // 실제 역할
		
		System.out.println("응답 시 할 일");
	}
	
}
