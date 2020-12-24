package bitcamp.sodam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import bitcamp.sodam.beans.FAQ;
import bitcamp.sodam.service.FAQService;

@Controller
public class HomeController {

	@Autowired
	FAQService faqService;

	@GetMapping("/")
	public String Home() {
		System.out.println("메인페이지");
		return "index";
	}

	@GetMapping("/faq")
	public String faq(HttpServletRequest request, HttpServletResponse response, Model model) {
		int type = Integer.parseInt(request.getParameter("type"));

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		if (type == 0 || type == 1) {
			List<FAQ> list;
			try {
				list = faqService.list(type);
				model.addAttribute("list", list);
				request.setAttribute("post", list);
			} catch (Exception e) {
				request.setAttribute("post", null);
				e.printStackTrace();
			}
		} else {
			request.setAttribute("post", null);
		}

		return "serviceCenter/faq";
	}

	@GetMapping("/faq_detail")
	public String faq_detail(HttpServletRequest request, HttpServletResponse response, Model model) {
		int no = Integer.parseInt(request.getParameter("no"));

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		FAQ post;
		try {
			post = faqService.get(no);

			request.setAttribute("post", post); // 데이터가 jsp 파일에 전달된다.
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "serviceCenter/faq_detail";
	}
	
	@GetMapping("/sample/test")
	public String Test() {
		return "sample.test";
	}
}
