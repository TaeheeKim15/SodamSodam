package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;

public interface StoreMapper {
  @Select("select s.sno, sname, u.uno, sint, stel, saddr, s_det_addr, dyesno, sphoto, edt, sdt, scdt, scategory "
      + "from tmk_store_info s "
      + "join tmk_user u on s.uno = u.uno"
      + " order by"
      + " s.sno asc")
  List<Store> findStoreList();
  
  @Select("select sno, sname, uno, sint, stel, saddr, s_det_addr, dyesno, sphoto, edt, sdt, scdt, scategory from tmk_store_info where sno = #{sno}")
  Store findByNoStore(@Param("sno")int sno);
  
  @Select("SELECT cno, ctname FROM tmk_category_list")
  List<Category> findByNo();
  
  @Insert("insert into tmk_store_info(uno, sname, sint, stel, saddr, s_det_addr, dyesno, sphoto, edt, sdt, scategory)"
      + "values(#{uno}, #{sname}, #{sint}, #{stel}, #{saddr}, #{s_det_addr}, #{dyesno}, #{sphoto}, #{edt}, #{sdt}, #{scategory})")
  int insertStore(Store store);
  
  @Update("UPDATE tmk_store_info s SET sname='#{sname}', sint='#{sint}', stel='#{stel}', saddr='#{saddr}', s_det_addr='#{s_det_addr}', "
  		+ " sphoto='#{sphoto}', edt='#{edt}', sdt='#{sdt}' WHERE s.sno = #{sno}")
  int updateStore(Store store);
  
  @Select("select uno, name, email, pwd, tel, uphoto, rdt, auth, addr, det_addr, uphoto from tmk_user where uno = #{uno} and pwd = #{pwd}")
  User findPwd(@Param("uno")int uno, @Param("pwd")String pwd);

  @Delete("delete from tmk_category where sno=#{sno}")
  int deleteCategory(int no);
  @Delete("delete from tmk_store_info where sno=#{sno}")
  int deleteStore(int sno);
  
  @Select("SELECT s.sno, p.pname FROM tmk_store_info s "
  		+ "JOIN tmk_product p "
  		+ "ON s.sno = p.sno "
  		+ "WHERE s.sno =#{sno}")
  List<Product> findByStoreProduct();
  
  @Select("SELECT count(uno) FROM tmk_store_info where uno=#{uno}")
  int checkUnoCount(int uno);
  
  @Select("select uno, name, email, pwd, tel, uphoto, uthum_photo, rdt, auth, addr from tmk_user")
  List<User> findAll();
  
  @Select("SELECT rno, rcontent, rscore, cdt "
  		+ "FROM tmk_review tr "
  		+ "JOIN tmk_store_info ts ON tr.sno = ts.sno "
  		+ "JOIN tmk_user tu ON tr.uno = tu.uno "
  		+ "WHERE tr.sno = #{sno} AND tr.uno = #{uno}")
  Store findAllReviewList();
}
