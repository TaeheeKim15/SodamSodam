package bitcamp.sodam.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bitcamp.sodam.beans.Order;
import bitcamp.sodam.dao.OrderDao;


@Service
public class DefaultOrderService implements OrderService {

  @Autowired
  OrderDao orderDao;

  @Override
  public List<Order> list(int uno) throws Exception {
    List<Order> order = orderDao.findOrderList(uno);
    return order;
  }

  @Override
  public int addOrder(Order order) throws Exception {
    return orderDao.insertOrder(order);
  }


}
