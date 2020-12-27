package bitcamp.sodam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.Coupon;
import bitcamp.sodam.dao.CouponDao;

@Service
public class DefaultCouponService implements CouponService { 
	
	
	@Autowired
	CouponDao couponDao;
	
	@Override
	public List<Coupon> list(int uno) throws Exception {
		List<Coupon> coupon = couponDao.findCouponList(uno);
		return coupon;
	}

}
