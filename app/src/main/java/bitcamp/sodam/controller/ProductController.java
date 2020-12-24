package bitcamp.sodam.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {
	
	@GetMapping("/product_detail")
	public String ProductDetail(HttpServletResponse response) {
		
		response.setContentType("text/html; charset=UTF-8");
		
		return "product/product_detail";
	}
	
	@GetMapping("/product_list")
	public String ProductList(HttpServletResponse response) {
		
		response.setContentType("text/html; charset=UTF-8");
		
		return "product/product_list";
	}
}
