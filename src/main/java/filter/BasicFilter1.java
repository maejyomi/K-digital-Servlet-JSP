package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//@WebFilter(urlPatterns = "*") // 모든 JSP에 호출
public class BasicFilter1 implements Filter{
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("before - BasicFilter1");
	
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		
		String uri = req.getRequestURI();
		if(uri.equals("/MustHaveJSP/HelloJSP.jsp"))
			chain.doFilter(request, response); // 다음 필터의 doFilter를 호출하는 것
		else
			resp.sendRedirect("/MustHaveJSP/HelloJSP.jsp");
		
		
		System.out.println("after - BasicFilter1");
	}
	

}
