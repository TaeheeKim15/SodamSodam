package bitcamp.sodam.database;

import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import bitcamp.sodam.beans.Order;

public interface OrderMapper {
  @Select("select o.ono, u.uno, p.pno, op.price, op_cnt, s.sname, p.pname, u.addr, u.det_addr, o.odt, o.dstatus "
      + "from tmk_order o "
      + "join tmk_order_product op on o.ono = op.ono "
      + "join tmk_user u on u.uno = o.uno "
      + "join tmk_product p on p.pno = op.pno "
      + "join tmk_store_info s on s.sno = p.sno "
      + "WHERE u.uno = #{uno} "
      + "order by odt desc")
  List<Order> findOrdertList(int uno);

  @Insert("insert into tmk_order(uno, odt, request, dcmp, tran_no, dstatus) values (#{uno}, #{odt}, #{request}, #{dcmp}, #{tran_no}, #{dstatus})")
  int insertOrder(Order order);

}