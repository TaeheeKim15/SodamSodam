package bitcamp.sodam.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Coupon;

@Repository
public interface CouponDao {
	List<Coupon> findCouponList(int uno) throws Exception;
	List<Coupon> findAllCouponList() throws Exception;
	void delete(int mcuno) throws Exception;
}
