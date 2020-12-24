package bitcamp.sodam.database;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;

public interface StoreMapper {
  @Select("select s.sno, sname, u.uno, sint, stel, saddr, s_det_addr, dyesno, sphoto, edt, sdt, scdt, scategory "
      + "from tmk_store_info s "
      + "join tmk_user u on s.uno = u.uno"
      + " order by"
      + " s.sno asc")
  List<Store> findStoreList();
  
  @Select("SELECT s.scategory, cl.ctno, cl.ctname FROM tmk_store_info s JOIN tmk_category_list cl on s.scategory = cl.ctno WHERE sno=#{sno}")
  List<Store> findByNo(int sno);
  
  @Insert("insert into tmk_store_info(uno, sname, sint, stel, saddr, s_det_addr, dyesno, sphoto, edt, sdt, scategory)"
      + "values(#{uno}, #{sname}, #{sint}, #{stel}, #{saddr}, #{s_det_addr}, #{dyesno}, #{sphoto}, #{edt}, #{sdt}, #{scategory})")
  int insertStore(Store store);
  
  @Delete("delete from tmk_store_info where sno=#{sno}")
  int deleteStore(int sno);
}
