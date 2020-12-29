package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;
public interface StoreService {
  List<Store> list() throws Exception;
  int insertStore(Store store) throws Exception;
  int deleteStore(int sno) throws Exception;
  int deleteCategory(int no) throws Exception;
  List<Category> clist() throws Exception;
  Store get(int sno) throws Exception;
}
