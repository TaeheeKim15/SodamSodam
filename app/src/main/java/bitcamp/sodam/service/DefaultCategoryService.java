package bitcamp.sodam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.dao.CategoryDao;

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

	@Override
	public void addCategoryStore(String category, String sno) throws Exception {
		categoryDao.addCategoryStore(category, sno);
		
	}

	@Override
	public String getInsertId() throws Exception {
		return categoryDao.getInsertId();
	}
}
