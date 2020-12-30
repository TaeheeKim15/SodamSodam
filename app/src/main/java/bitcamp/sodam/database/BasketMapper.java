package bitcamp.sodam.database;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.User;

public interface BasketMapper {
  @Select("select u.uno, u.name, b.bno, p.pno, bcnt, p.pname pname, p.price price, p.stock stock, s.sno, s.sname, p.photo photo "
      + "from tmk_basket b " 
      + "join tmk_user u on u.uno = b.uno "
      + "join tmk_product p on p.pno = b.pno " 
      + "join tmk_store_info s on s.sno = p.sno "
      + "where u.uno=#{uno} " + "order by bno asc")
  List<Basket> findBasketList(int uno);

  @Delete("delete from tmk_basket where uno=#{uno}")
  int deleteAll(int uno);

  @Delete("delete from tmk_basket where bno=#{bno}")
  int delete(int bno);

  @Update("update tmk_basket set bcnt = #{bcnt} where uno=#{uno}")
  int update(Basket basket);


  @Insert("insert into tmk_basket (uno,pno,bcnt) values (#{uno}, #{pno}, #{bcnt})")
  int insert(Basket basket);

  @Select("select * from tmk_basket where uno = #{user.uno} AND pno = #{product.pno}")
  Basket checkBasketProduct(@Param("product") Product product, @Param("user") User user);


  @Insert("insert into tmk_basket (uno, pno, bcnt, bcdt) values (#{uno}, #{pno}, #{bcnt}, '2020-01-01')")
  int basketinsert(@Param("uno") int uno, @Param("pno") int pno, @Param("bcnt") int bcnt);


  @Select("select u.uno , u.name, d.cuno, cuprice, b.bno, p.pno, bcnt, p.pname pname, p.price price, s.sno, s.sname, p.photo photo "
      + "from tmk_basket b " 
      + "join tmk_user u on u.uno = b.uno "
      + "join tmk_product p on p.pno = b.pno " 
      + "join tmk_store_info s on s.sno = p.sno "
      + "join tmk_my_coupon m on m.uno = b.uno " 
      + "join tmk_discount d on d.cuno = m.cuno "
      + "where u.uno=#{uno}")
  List<Basket> basketPay(int uno);



}
