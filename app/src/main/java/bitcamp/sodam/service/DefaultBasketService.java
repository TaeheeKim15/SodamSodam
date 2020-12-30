package bitcamp.sodam.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.dao.BasketDao;

@Service
public class DefaultBasketService implements BasketService {

  @Autowired
  BasketDao basketdao;

  @Override
  public List<Basket> list(int uno) throws Exception {
    List<Basket> basket = basketdao.findBasketList(uno);
    return basket;
  }


  @Override
  public int deleteAll(int uno) throws Exception {
    return basketdao.deleteAll(uno);
  }

  @Override
  public int delete(int bno) throws Exception {
    return basketdao.delete(bno);
  }

  @Override
  public int update(Basket basket) throws Exception {
    return basketdao.update(basket);
  }

  @Override
  public int add(Basket basket) throws Exception {
    return basketdao.insert(basket);
  }


  @Override
  public List<Basket> basketPay(int uno) throws Exception {
    List<Basket> basket = basketdao.basketPay(uno);
    return basket;
  }



}
