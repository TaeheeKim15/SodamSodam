package bitcamp.sodam.database;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import bitcamp.sodam.beans.Product;

public interface ProductMapper {
	@Select("select p.pno, s.sno, s.sname ,pname, price, stock, p.photo, pint, pcdt " + "from tmk_product p "
			+ "join tmk_store_info s on p.sno = s.sno " + "where s.sname like concat('%', #{keyword}, '%') "
			+ "order by " + "p.pno asc")
	List<Product> findAll(String keyword);

	@Select("select p.pno, s.sno, s.sname ,pname, price, stock, p.photo, pint, pcdt " + "from tmk_product p "
			+ "join tmk_store_info s on p.sno = s.sno " + "order by " + "p.pno asc")
	List<Product> findAllNull();
	
	@Select("select p.pno, s.sno, s.sname ,pname, price, stock, p.photo, pint, pcdt " + "from tmk_product p "
			+ "join tmk_store_info s on p.sno = s.sno " + "WHERE p.sno = #{sno}" + " order by " + "p.pno asc")
	List<Product> findAllStoreProduct(int sno);

	@Select("select pno, pname, p.sno, price, stock, photo, pint, pcdt, s.sname, s.sint, s.dyesno "
			+ "from tmk_product p " + "join tmk_store_info s on p.sno = s.sno " + "where pno = #{pno}")
	Product findByNo(int pno);

	@Insert("insert into tmk_product(sno,pname,price,stock,photo,pint,pcdt)"
			+ "values(#{market.sno},#{pname},#{price},#{stock},#{photo},#{pint},#{pcdt}")
	int insert(Product product);

	@Update("update tmk_product " + "set pname = #{pname}, price = #{price}, stock = #{stock},"
			+ "photo = #{photo}, pint = #{pint}, pcdt = #{pcdt}" + "where pno = #{pno}")
	int update(Product product);

	@Delete("delete from tmk_product where pno=#{pno}")
	int delete(int pno);

	@Delete("delete from tmk_product where sno=#{sno}")
	int deleteStoreProduct(int sno);
}
