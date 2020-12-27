package bitcamp.sodam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.BasketService;

@Controller
public class BasketController {

  @Autowired
  BasketService basketService;

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

  @GetMapping("insert")
  public String insert(Basket basket, HttpSession session, Model model) throws Exception{
    User loginUser = (User) session.getAttribute("loginUser");
    basket.setUno(loginUser.getUno());
    basketService.add(basket);
    return "redirect:basketList";
  }
}





















