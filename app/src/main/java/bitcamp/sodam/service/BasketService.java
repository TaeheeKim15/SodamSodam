package bitcamp.sodam.service;

import java.util.List;
import bitcamp.sodam.beans.Basket;


public interface BasketService {
  List<Basket> list(int uno) throws Exception;
  int deleteAll(int uno) throws Exception;
  int delete(int bno) throws Exception;
  int update(Basket basket) throws Exception;
  int add(Basket basket) throws Exception;
  List<Basket> basketPay(int uno) throws Exception;
}
