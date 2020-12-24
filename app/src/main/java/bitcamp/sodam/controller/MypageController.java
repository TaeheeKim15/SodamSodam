package bitcamp.sodam.controller;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bitcamp.sodam.service.FAQService;

@Controller
public class MypageController {
	
	@Autowired
    FAQService faqService;

    @GetMapping("/mypage")
    public String Home(){
        System.out.println("마이페이지");
        return "mypage/main";
    }
    
    @GetMapping("/coupon")
    public String CouponList(HttpServletResponse response) {
      response.setContentType("text/html; charset=UTF-8");
      
      return "mypage/coupon";
    }
}
