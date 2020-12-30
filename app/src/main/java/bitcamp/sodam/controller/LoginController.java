package bitcamp.sodam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.UserService;

@Controller
public class LoginController {

	@Autowired
	UserService userService;

	@GetMapping("/login")
	public String LoginGet(@CookieValue(value = "rememberAccount", required = false) String email, Model model, HttpServletResponse response) {
		
		response.setContentType("text/html; charset=UTF-8");
		
		model.addAttribute("email", email);
		
		return "auth/login";
	}

	@PostMapping("/loginPost")
	public String LoginPost(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		PrintWriter out;
		User user;
		
		response.setContentType("text/html; charset=UTF-8");
		
		try {
			out = response.getWriter();
			user = userService.get(email, pwd);
			if (user == null) {
				out.println("<script>alert('존재하지 않는 사용자입니다.');</script>");
			} else {
				
				String[] remember = request.getParameterValues("rememberMe");
				if(remember != null) {
					Cookie cookie = new Cookie("rememberAccount", email) ;
					cookie.setMaxAge(365*24*60*60);                                 // 쿠키의 유효기간을 365일로 설정한다.
					cookie.setPath("/");
					response.addCookie(cookie);   
				} else {
					Cookie cookie = new Cookie("rememberAccount", null) ;
					cookie.setMaxAge(0) ;
					cookie.setPath("/");
				    response.addCookie(cookie) ;
				}
				
				System.out.println("Login Success");
				
				session.setAttribute("loginUser", user);
				
				return "redirect:/";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "auth/login";
	}
	
	@GetMapping("/logout")
	public String LoginPost(HttpServletRequest request) {
		request.getSession().invalidate();
		System.out.println("로그아웃 되었습니다.");
        return "redirect:/";
	}
	
	@GetMapping("/signUp")
	public String SignUp(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html; charset=UTF-8");
		
		return "auth/sign_up";
	}
}
