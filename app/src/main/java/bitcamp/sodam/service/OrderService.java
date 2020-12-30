package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Order;

public interface OrderService { 
	List<Order> list(int uno) throws Exception;
}
