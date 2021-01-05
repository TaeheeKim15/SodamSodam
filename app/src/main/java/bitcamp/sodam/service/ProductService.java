package bitcamp.sodam.service;

import java.util.List;
import bitcamp.sodam.beans.Product;

public interface ProductService {
  List<Product> list(String keyword) throws Exception;
  List<Product> list(int sno) throws Exception;
  List<Product> list() throws Exception;
  Product get(int no) throws Exception;
  int add(Product product) throws Exception;
  int update(Product product) throws Exception;
  int delete(int no) throws Exception;
  void deleteStoreProduct(int sno) throws Exception;
  List<Product> findStoreProduct(int sno) throws Exception;
  List<Product> listStoreProduct(int sno) throws Exception;
}
