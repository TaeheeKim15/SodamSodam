package bitcamp.sodam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import bitcamp.sodam.beans.Product;
import bitcamp.sodam.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

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


	@GetMapping("/product_list1")
	public String ProductList(HttpServletRequest request, HttpServletResponse response, Model model) {

		response.setContentType("text/html; charset=UTF-8");

		String keyword = request.getParameter("keyword");

		try {
			List<Product> list = productService.list(keyword);
			model.addAttribute("list", productService.list(keyword));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "product/product_list1";
	}
}
