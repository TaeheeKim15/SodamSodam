package bitcamp.sodam.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Coupon;

@Repository
public interface CouponDao {
	List<Coupon> findCouponList(int uno) throws Exception;
	List<Coupon> findAllCouponList() throws Exception;
	List<Coupon> findRealAllCouponList() throws Exception;
	void delete(int mcuno) throws Exception;
	void add(int cuno, int uno) throws Exception;
	void addItem(Coupon coupon) throws Exception;
}
