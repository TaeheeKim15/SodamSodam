package bitcamp.sodam.dao.mariadb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.Coupon;
import bitcamp.sodam.dao.CouponDao;
import bitcamp.sodam.database.CouponMapper;

// Mybatis 적용
// => SqlSessionFactory를 자체적으로 생성하지 않고
//    생성자를 통해 외부에서 주입 받는다.(Dependency Injection: DI)
//

@Repository
public class CouponDaoImpl implements CouponDao {
	
	@Autowired
	private CouponMapper couponMapper;

	
	@Override
	public List<Coupon> findCouponList(int uno) throws Exception {
		return couponMapper.findCouponList(uno);
	}


	@Override
	public List<Coupon> findAllCouponList() throws Exception {
		return couponMapper.findAllCouponList();
	}


	@Override
	public void delete(int mcuno) throws Exception {
		couponMapper.delete(mcuno);
	}


	@Override
	public List<Coupon> findRealAllCouponList() throws Exception {
		return couponMapper.findRealCouponList();
	}


	@Override
	public void add(int cuno, int uno) throws Exception {
		couponMapper.addMyCoupon(cuno, uno);
	}


	@Override
	public void addItem(Coupon coupon) throws Exception {
		couponMapper.addCoupon(coupon);
	}


	@Override
	public void update(Coupon coupon) throws Exception {
		couponMapper.update(coupon);
	}
	
}
