package bitcamp.sodam.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.database.CategoryMapper;

@Repository
public class CategoryDao {
	@Autowired
	private CategoryMapper categoryMapper;
	
	public List<Category> findAll() throws Exception{
	  return categoryMapper.findAll();
	}
	
	public void insert(String ctname) throws Exception{
		categoryMapper.insert(ctname);
	}
	
	public void delete(int ctno) throws Exception{
		categoryMapper.delete(ctno);
	}
	
	public void update(Category category) throws Exception{
		categoryMapper.update(category);
	}
	
	public List<Category> findByNo(int sno) throws Exception{
		return categoryMapper.findByNo(sno);
	}
}
