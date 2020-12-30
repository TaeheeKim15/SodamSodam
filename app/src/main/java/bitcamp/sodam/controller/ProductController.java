package bitcamp.sodam.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.BasketService;
import bitcamp.sodam.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	BasketService basketService;

	@GetMapping("/product/detail")
	public String ProductDetail(HttpServletRequest request, HttpServletResponse response, HttpSession session, Basket basket, Model model) {

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경
		
		String pno = request.getParameter("pno");
		
		Product product;
		try {
			product = productService.get(Integer.parseInt(pno));
			model.addAttribute("product", product);
			
			int sno = product.getSno();
			
			List<Product> product_list = productService.listStoreProduct(sno);
			
			model.addAttribute("product_list", product_list);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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

		if (keyword == null) {
			try {
				List<Product> list = productService.list();
				model.addAttribute("list", list);
			} catch (Exception e) {
				model.addAttribute("list", null);
				e.printStackTrace();
			}
		} else {
			try {
				List<Product> list = productService.list(keyword);
				model.addAttribute("list", list);
			} catch (Exception e) {
				model.addAttribute("list", null);
				e.printStackTrace();
			}
		}

		return "product/product_list1";
	}

	@PostMapping("add")
	public String ProductAdd(Product product, HttpServletRequest request) {
		System.out.println("상품 추가");
		try {
			productService.add(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/product/product_list1";
	}
}
