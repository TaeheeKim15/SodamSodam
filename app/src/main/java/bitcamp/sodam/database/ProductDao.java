package bitcamp.sodam.database;

import java.util.List;
import org.springframework.stereotype.Repository;
import bitcamp.sodam.beans.Product;

@Repository
public interface ProductDao {
  List<Product> findAll(String keyword) throws Exception;
  Product findByNo(int no) throws Exception;
  int insert(Product product) throws Exception;
  int update(Product product) throws Exception;
  int delete(int no) throws Exception;
}








