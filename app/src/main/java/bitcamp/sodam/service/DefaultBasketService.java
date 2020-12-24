package bitcamp.sodam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.FAQ;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.BasketDao;
import bitcamp.sodam.dao.FAQDao;

@Service
public class DefaultBasketService implements BasketService {

	@Autowired
	BasketDao basketdao;
	
	@Override
	public List<Basket> list(int uno) throws Exception {
		List<Basket> basket = basketdao.findBasketList(uno);
		return basket;
	}
	
}
