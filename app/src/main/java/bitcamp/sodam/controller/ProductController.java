package bitcamp.sodam.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.service.ProductService;

@Controller
public class ProductController {

  @Autowired
  ProductService productService;

  @GetMapping("detail")
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
