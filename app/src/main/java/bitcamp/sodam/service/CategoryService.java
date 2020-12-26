package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;

public interface CategoryService {
	List<Category> list() throws Exception;
	void add(String name) throws Exception;
	void delete(int no) throws Exception;
	void update(Category category) throws Exception;
	List<Category> list(int sno) throws Exception;
	void addCategoryStore(String category, String sno) throws Exception;
	String getInsertId() throws Exception;
}
