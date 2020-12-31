package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Coupon;

public interface CouponMapper {
	
	@Select("select mc.mcuno, mc.uno, d.cuname, d.cuprice, d.cuexp, mc.mcudt, d.cuint , mc.mcu_status "
			+ "from tmk_my_coupon mc "
			+ "inner join tmk_discount d on mc.cuno = d.cuno "
			+ "inner join tmk_user u on mc.uno = u.uno "
			+ "where u.uno = #{uno} and mcu_status = 0  and cuexp >= DATE(now())"
			+ "order by mcu_status, mcudt"
			)
    List<Coupon> findCouponList(int uno);
	
	@Select("select c.mcuno, c.uno, c.cuno, c.mcudt, c.mcu_status, u.name, u.email, d.cuname, d.cuint, d.cuprice from tmk_my_coupon c join tmk_user u on c.uno = u.uno join tmk_discount d on c.cuno = d.cuno")
    List<Coupon> findAllCouponList();
	
	@Select("SELECT cuno, cuname, cuprice, cuexp, cuint FROM tmk_discount WHERE NOT cuno = 5")
    List<Coupon> findRealCouponList();
	
	@Delete("DELETE FROM tmk_my_coupon WHERE mcuno = #{mcuno}")
    void delete(int mcuno);
	
	@Delete("DELETE FROM tmk_discount WHERE cuno = #{cuno}")
    void deleteCoupon(int cuno);
	
	@Insert("insert into tmk_my_coupon(cuno, uno, mcu_status) values(#{cuno}, #{uno}, 0)")
    void addMyCoupon(@Param("cuno") int cuno, @Param("uno") int uno);
	
	@Insert("insert into tmk_discount(cuname, cuprice, cuint) VALUES(#{cuname}, #{cuprice}, #{cuint})")
    void addCoupon(Coupon coupon);
	
	@Update("UPDATE tmk_discount SET cuname = #{cuname}, cuprice = #{cuprice}, cuint = #{cuint} WHERE cuno = #{cuno}")
    void update(Coupon coupon);

}
