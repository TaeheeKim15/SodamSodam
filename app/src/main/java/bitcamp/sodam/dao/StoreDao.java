package bitcamp.sodam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;

@Repository
public interface StoreDao {
  List<Store> findStoreList() throws Exception;
  int insertStore(Store store) throws Exception;
  int deleteStore(int sno) throws Exception;
  int deleteCategory(int no) throws Exception;
  List<Category> findByNo() throws Exception;
  int updateStore(Store store) throws Exception;
  Store findByNoStore(int sno) throws Exception;
  List<Product> fintByStoreProduct() throws Exception;
  int checkUnoCount(int uno) throws Exception;
  User findUnoPwd(int uno, String pwd) throws Exception;
  List<User> findAll() throws Exception;
} 
