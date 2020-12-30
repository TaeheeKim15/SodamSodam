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
import bitcamp.sodam.beans.Coupon;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.BasketService;
import bitcamp.sodam.service.CouponService;

@Controller
public class BasketController {

  @Autowired
  BasketService basketService;

  @Autowired
  CouponService couponService;

  @GetMapping("/basketList")
  public String BasketList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
    System.out.println("장바구니 리스트!");

    User user = (User) session.getAttribute("loginUser");
    int uno = user.getUno();

    response.setContentType("text/html;charset=UTF-8");
    response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

    List<Basket> list;
    try {
      list = basketService.list(uno);
      for (Basket basket : list) {
        basket.setPriceCommas(String.format("%,d", basket.getPrice()));
      }

      int sum = 0;
      for (Basket basket : list) {
        sum += basket.getPrice() * basket.getBcnt();
        basket.setSum(sum);
      }

      Basket bsum = list.get(list.size() -1); 

      String commaSum = String.format("%,d", bsum.getSum());

      model.addAttribute("list", list);
      model.addAttribute("sum", commaSum);

      int tsum = sum + 2500;
      String commaTSum = String.format("%,d", tsum);

      model.addAttribute("tsum", commaTSum);
      model.addAttribute("tsum2", tsum);


    } catch (Exception e) {
      model.addAttribute("list", null);
      e.printStackTrace();
    }
    return "basket/basketList";
  }

  @GetMapping("/basketPay")
  public String basketPay(HttpServletResponse response, HttpSession session, Model model) throws Exception {
    System.out.println("페이로 넘어가라");

    User user = (User) session.getAttribute("loginUser");
    int uno = user.getUno();

    response.setContentType("text/html;charset=UTF-8");
    response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

    List<Basket> list;

    List<Coupon> cList;
    List<Coupon> coupon_list = new ArrayList<Coupon>();

    try {

      cList = couponService.list(uno);

      for(Coupon tenp_coupon : cList) {
        if(tenp_coupon.getMcu_status() == 0) {
          tenp_coupon.setStatus("사용가능");
          coupon_list.add(tenp_coupon);
        } else if (tenp_coupon.getMcu_status() == 1) {
          tenp_coupon.setStatus("사용완료");
          coupon_list.add(tenp_coupon);
        }
      }

      model.addAttribute("cList", coupon_list);

      list = basketService.basketPay(uno);
      for (Basket basket : list) {
        basket.setPriceCommas(String.format("%,d", basket.getPrice()));
      }

      int sum = 0;
      for (Basket basket : list) {
        sum += basket.getPrice() * basket.getBcnt();
        basket.setSum(sum);
      }

      Basket bsum = list.get(list.size() -1); 

      String commaSum = String.format("%,d", bsum.getSum());

      model.addAttribute("list", list);
      model.addAttribute("sum", commaSum);

      int tsum = sum + 2500;
      String commaTSum = String.format("%,d", tsum);


      model.addAttribute("tsum", commaTSum);
      model.addAttribute("tsum2", tsum);

    } catch (Exception e) {
      model.addAttribute("cList", null);

      model.addAttribute("list", null);
      e.printStackTrace();
    }
    return "basket/basketPay";
  }



  @GetMapping("deleteAll")
  public String deleteAll(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
    System.out.println("삭제 테스트");
    String test = request.getParameter("uno");
    if(request.getParameter("uno") == "") {
      return "redirect:basketList";
    }

    basketService.deleteAll(Integer.parseInt(request.getParameter("uno")));

    return "redirect:basketList";
  }

  @GetMapping("delete")
  public String delete(int bno) throws Exception {
    basketService.delete(bno);
    return "redirect:basketList";
  }

  @GetMapping("update")
  public String update(Basket basket) throws Exception {
    basketService.update(basket);
    return "redirect:basketList";
  }

  @PostMapping("/basket/insert")
  public void insert(HttpServletRequest request, HttpServletResponse response, Basket basket, HttpSession session, Model model) throws Exception{
    User loginUser = (User) session.getAttribute("loginUser");
    basket.setUno(loginUser.getUno());

    basketService.add(basket);
  }


}





















