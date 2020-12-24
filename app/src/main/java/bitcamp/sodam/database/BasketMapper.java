package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.FAQ;

public interface BasketMapper {
    @Select("select u.uno, u.name, b.bno, p.pno, bcnt, p.pname pname, p.price price, p.stock stock, s.sno, s.sname from tmk_basket b " + 
    		"join tmk_user u on u.uno = b.uno " + 
    		"join tmk_product p on p.pno = b.pno " + 
    		"join tmk_store_info s on s.sno = p.sno " + 
    		"where u.uno=#{uno} " + 
    		"order by " + 
    		"bno asc")
    List<Basket> findBasketList(int uno);
}