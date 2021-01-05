package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;

public interface StoreService {
  List<Store> list() throws Exception;
  int insertStore(Store store) throws Exception;
  int deleteStore(int sno) throws Exception;
  int deleteCategory(int no) throws Exception;
  List<Category> clist() throws Exception;
  Store get(int sno) throws Exception;
  List<Product> plist() throws Exception;
  int storeLimit(int uno) throws Exception;
  User getUnoPwd(int uno, String pwd) throws Exception;
  List<User> ulist() throws Exception;
  Store getStore(int uno) throws Exception;
}
