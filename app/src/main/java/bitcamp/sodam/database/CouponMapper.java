package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import bitcamp.sodam.beans.Coupon;

public interface CouponMapper {
	
	@Select("select mc.mcuno, mc.uno, d.cuname, d.cuprice, d.cuexp, mc.mcudt, d.cuint , mc.mcu_status "
			+ "from tmk_my_coupon mc "
			+ "inner join tmk_discount d on mc.cuno = d.cuno "
			+ "inner join tmk_user u on mc.uno = u.uno "
			+ "where u.uno = #{uno} "
			+ "order by mcu_status, mcudt"
			)
    List<Coupon> findCouponList(int uno);


}
