package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Coupon;

public interface CouponService { 
	List<Coupon> list(int uno) throws Exception;
}
