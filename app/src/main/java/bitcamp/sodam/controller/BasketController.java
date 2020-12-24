package bitcamp.sodam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.BasketService;

@Controller
public class BasketController {

	@Autowired
	BasketService basketService;

	@GetMapping("/basketList")
	public String BasketList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
		System.out.println("메인페이지");

		User user = (User) session.getAttribute("loginUser");

		int uno = user.getUno();

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Basket> list;
		try {
			list = basketService.list(uno);
			model.addAttribute("list", list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}
		return "basket/basketList";
	}
}
