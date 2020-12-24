package bitcamp.sodam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.FAQ;

@Repository
public interface BasketDao {
  List<Basket> findBasketList(int uno) throws Exception;
}








