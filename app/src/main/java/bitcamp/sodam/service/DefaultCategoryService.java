package bitcamp.sodam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.Basket;
import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.FAQ;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.BasketDao;
import bitcamp.sodam.dao.CategoryDao;
import bitcamp.sodam.dao.FAQDao;

@Service
public class DefaultCategoryService implements CategoryService {

	@Autowired
	CategoryDao categoryDao;

	@Override
	public List<Category> list() throws Exception {
		List<Category> category = categoryDao.findAll();
		return category;
	}

	@Override
	public void add(String name) throws Exception {
		categoryDao.insert(name);
	}

	@Override
	public void delete(int no) throws Exception {
		categoryDao.delete(no);
	}

	@Override
	public void update(Category category) throws Exception {
		categoryDao.update(category);
		
	}

	@Override
	public List<Category> list(int sno) throws Exception {
		return categoryDao.findByNo(sno);
	}
	
}
