package bitcamp.sodam.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bitcamp.sodam.beans.Order;
import bitcamp.sodam.database.OrderMapper;

@Repository
public class OrderDao {

  @Autowired
  private OrderMapper orderMapper;

  public List<Order> findOrderList(int uno) throws Exception{ 
    return orderMapper.findOrdertList(uno);
  }

  public int insertOrder(Order order) throws Exception{
    return orderMapper.insertOrder(order);
  }
}
