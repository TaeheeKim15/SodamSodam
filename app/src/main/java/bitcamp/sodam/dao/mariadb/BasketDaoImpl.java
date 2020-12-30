package bitcamp.sodam.dao.mariadb;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.dao.BasketDao;
import bitcamp.sodam.database.BasketMapper;

// Mybatis 적용
// => SqlSessionFactory를 자체적으로 생성하지 않고
//    생성자를 통해 외부에서 주입 받는다.(Dependency Injection: DI)
//

@Repository
public class BasketDaoImpl implements BasketDao {

  @Autowired
  private BasketMapper basketMapper;

  @Override
  public List<Basket> findBasketList(int uno) throws Exception {
    return basketMapper.findBasketList(uno);
  }

  @Override
  public int deleteAll(int uno) throws Exception {
    return basketMapper.deleteAll(uno);
  }


  @Override
  public int delete(int bno) throws Exception {
    return basketMapper.delete(bno);
  }

  @Override
  public int update(Basket basket) throws Exception {
    return basketMapper.update(basket);
  }

  @Override
  public int insert(Basket basket) throws Exception {
    return basketMapper.insert(basket);
  }
  @Override
  public List<Basket> basketPay(int uno) throws Exception {
    return basketMapper.basketPay(uno);
  }
}
