package bitcamp.sodam.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@GetMapping("/user_detail")
	public String UserDetail(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("로그인 사용자 정보");
		
		User user = (User) request.getSession().getAttribute("loginUser");
		
		response.setContentType("text/html;charset=UTF-8");

        response.setCharacterEncoding("UTF-8");
        
        try {
			User userInfo = userService.get(user.getEmail(), user.getPwd());
			model.addAttribute("userInfo", userInfo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		return "user/user_detail";
	}
	
	@PostMapping("/user_edit_info")
	@ResponseBody
	public Map<String, String> UserEdit(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		response.setContentType("text/html;charset=UTF-8");

        response.setCharacterEncoding("UTF-8");
        
        User user = null;
        try {
			user = userService.getUser(Integer.parseInt(request.getParameter("id")));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        Map<String, String> map = new HashMap();
        map.put("uno", String.valueOf(user.getUno()));
        map.put("name", user.getName());
        map.put("email", user.getEmail());
        map.put("pwd", user.getPwd());
        map.put("pst", user.getPst());
        map.put("addr", user.getAddr());
        map.put("det_addr", user.getDet_addr());
        map.put("tel", user.getTel());
        map.put("birth", user.getBirth());
        map.put("auth", String.valueOf(user.getAuth()));
        map.put("photo", user.getUphoto());
		
		return map;
	}
}
