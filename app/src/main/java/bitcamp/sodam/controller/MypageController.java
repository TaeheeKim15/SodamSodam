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

import bitcamp.sodam.beans.Coupon;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.CouponService;



@Controller
public class MypageController {
	
	@Autowired
	CouponService couponService;
	
	@GetMapping("/mypage")
    public String Home(){
        System.out.println("마이페이지");
        return "mypage/main";
    }
    
    @GetMapping("/coupon")
    public String CouponList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
    	System.out.println("마이페이지>쿠폰");
    	
		User user = (User) session.getAttribute("loginUser");
		
		int uno = user.getUno();
		
		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		
		Coupon coupon = (Coupon) session.getAttribute("status");
		
		List<Coupon> list;
		List<Coupon> coupon_list = new ArrayList<Coupon>();

		try {
			list = couponService.list(uno);
			
			for(Coupon tenp_coupon : list) {
				if(tenp_coupon.getMcu_status() == 0) {
					tenp_coupon.setStatus("사용가능");
					coupon_list.add(tenp_coupon);
				} else if (tenp_coupon.getMcu_status() == 1) {
					tenp_coupon.setStatus("사용완료");
					coupon_list.add(tenp_coupon);
				}
			}
			
			model.addAttribute("list", coupon_list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
			e.getMessage();
		}
    	
      return "mypage/coupon";
    }
    
    
}
