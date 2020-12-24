package bitcamp.sodam.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import bitcamp.sodam.beans.User;

public class CheckLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handlern)
			throws Exception {

		User user = (User) request.getSession().getAttribute("loginUser");

		if (user == null) {
			System.out.println("유저없음");
			
			// 인터셉터에서 view를 호출할때 ModelAndView 객체를 생성한 뒤 사용해야한다.
			ModelAndView modelAndView = new ModelAndView("redirect:/login");
			throw new ModelAndViewDefiningException(modelAndView);
		}
		System.out.println("유저있음");
		return true;
	}

}
