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

import bitcamp.sodam.beans.Coupon;
import bitcamp.sodam.beans.Inquiry;
<<<<<<< HEAD
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.CouponService;
import bitcamp.sodam.service.InquiryService;
import bitcamp.sodam.service.ProductService;


=======
import bitcamp.sodam.beans.Order;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.CouponService;
import bitcamp.sodam.service.InquiryService;
import bitcamp.sodam.service.OrderService;
<<<<<<< HEAD
import bitcamp.sodam.service.UserService;
=======
>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95
>>>>>>> d35d96f4ebfd5245e9803b920949fdac50fff06e

@Controller
public class MypageController {
	
	@Autowired
	CouponService couponService;
	
	@Autowired
	InquiryService inquiryService;
	
	@Autowired
<<<<<<< HEAD
	ProductService productService;
=======
	OrderService orderService;
	
<<<<<<< HEAD
	@Autowired
	UserService userService;
	
=======
>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95
>>>>>>> d35d96f4ebfd5245e9803b920949fdac50fff06e
	
	@GetMapping("/mypage")
    public String Home(){
        System.out.println("마이페이지");
        return "mypage/main";
    }
    
	@PostMapping("/user_detail")
	public String UserDetail (HttpServletResponse response, Model model, Store store) throws Exception {
		System.out.println("마이페이지 > 개인정보수정");
		
		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/mypage/user_detail";

	}
	
    @GetMapping("/coupon")
    public String CouponList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
    	System.out.println("마이페이지>쿠폰");
    	
		User user = (User) session.getAttribute("loginUser");
		
		int uno = user.getUno();
		
		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		
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
    
    
    
    @GetMapping("/qlist")
    public String QList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
    	System.out.println("마이페이지 > 문의내역");
    	
    	User user = (User) session.getAttribute("loginUser");
        int uno = user.getUno();
        
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

        List<Inquiry> list;
        List<Inquiry> inquiry_list = new ArrayList<Inquiry>();
        
        try {
          list = inquiryService.list(uno);
          
          for(Inquiry tmp_inquiry : list) {
            
            switch(tmp_inquiry.getQtype()) {
				/*
				 * case 0 : tmp_inquiry.setType("배송"); break; case 1 :
				 * tmp_inquiry.setType("포인트"); break; case 2 : tmp_inquiry.setType("결제/환불");
				 * break; case 3 : tmp_inquiry.setType("쿠폰"); break; case 4 :
				 * tmp_inquiry.setType("상품"); break; default: tmp_inquiry.setType("기타"); break;
				 */             
            }
            inquiry_list.add(tmp_inquiry);
            
        }
          model.addAttribute("list", inquiry_list);
      } catch (Exception e) {
          model.addAttribute("list", null);
          e.printStackTrace();
          e.getMessage();
      }
        
    	return "mypage/q_list";
    }
    
<<<<<<< HEAD
	@GetMapping("/store_manager") 
    public String storeManager(HttpSession session, Model model) throws Exception {
        System.out.println("가게관리");
        
    	User user = (User) session.getAttribute("loginUser");
        int uno = user.getUno();
        
        	List<Product> list = productService.list();
        	
        	model.addAttribute("list", list);
        	
        return "mypage/store_manager";
=======
    
    
    @GetMapping("/orderList")
    public String OrderList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
    	
    	System.out.println("마이페이지 > 주문내역");
    	
    	User user = (User) session.getAttribute("loginUser");
        int uno = user.getUno();
        
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

        List<Order> list;
        
        try {
			list = orderService.list(uno);
			model.addAttribute("list", list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}
    	
      return "mypage/order_list";

>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95
    }
}


