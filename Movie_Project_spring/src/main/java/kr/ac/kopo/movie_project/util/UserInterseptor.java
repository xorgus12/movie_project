package kr.ac.kopo.movie_project.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import kr.ac.kopo.movie_project.model.Member;

public class UserInterseptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Member member =(Member) session.getAttribute("member");
		if(member.getGrade()==1) {
			System.out.println("UserInterseptor : True");
			return true;
		}
		String query=request.getQueryString();
		session.setAttribute("target", request.getRequestURI()+(query != null ? "?" + query:"" ));

		System.out.println("UserInterseptor : False");
		response.sendRedirect("/login");
		return false;
	}
	
}
