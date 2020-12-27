package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;

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
  
  @Delete("delete from tmk_store_info where sno=#{sno}")
  int deleteStore(int sno);
}
