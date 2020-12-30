package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Coupon;

public interface CouponService { 
	List<Coupon> list(int uno) throws Exception;
	List<Coupon> list() throws Exception;
	List<Coupon> itemList() throws Exception;
	void delete(int mcuno) throws Exception; 
	void add(int cuno, int uno) throws Exception; 
	void addItem(Coupon coupon) throws Exception;
	void update(Coupon coupon) throws Exception;
}
