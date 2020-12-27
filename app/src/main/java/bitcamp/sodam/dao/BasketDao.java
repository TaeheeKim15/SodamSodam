package bitcamp.sodam.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import bitcamp.sodam.beans.Basket;

@Repository
public interface BasketDao {
  List<Basket> findBasketList(int uno) throws Exception;
  int deleteAll(int uno) throws Exception;
  int delete(int bno) throws Exception;
  int update(Basket basket) throws Exception;
  int insert(Basket basket) throws Exception;
}








