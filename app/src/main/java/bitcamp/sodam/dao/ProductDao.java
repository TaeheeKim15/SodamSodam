package bitcamp.sodam.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import bitcamp.sodam.beans.Product;

@Repository
public interface ProductDao {
  List<Product> findAll(String keyword) throws Exception;
  List<Product> findAll() throws Exception;
  Product findByNo(int no) throws Exception;
  int insert(Product product) throws Exception;
  int update(Product product) throws Exception;
  int delete(int no) throws Exception;
  void deleteStroeProduct(int sno) throws Exception;
<<<<<<< HEAD
  List<Product> findStoreProduct(int sno) throws Exception;
=======
  List<Product> findAllStoreProduct(int sno) throws Exception;
>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95
}








