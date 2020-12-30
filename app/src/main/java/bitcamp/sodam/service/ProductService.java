package bitcamp.sodam.service;

import java.util.List;
import bitcamp.sodam.beans.Product;

public interface ProductService {
  List<Product> list(String keyword) throws Exception;
  List<Product> list() throws Exception;
  Product get(int no) throws Exception;
  int add(Product product) throws Exception;
  int update(Product product) throws Exception;
  int delete(int no) throws Exception;
  void deleteStoreProduct(int sno) throws Exception;
<<<<<<< HEAD
  List<Product> findStoreProduct(int sno) throws Exception;
=======
  List<Product> listStoreProduct(int sno) throws Exception;
>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95
}
