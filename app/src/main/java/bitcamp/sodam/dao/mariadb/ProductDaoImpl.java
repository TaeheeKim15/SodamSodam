package bitcamp.sodam.dao.mariadb;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.dao.ProductDao;
import bitcamp.sodam.database.ProductMapper;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	ProductMapper productMapper;

	@Override
	public List<Product> findAll(String keyword) throws Exception {
		return productMapper.findAll(keyword);
	}

	@Override
	public Product findByNo(int no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Product product) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Product product) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

  @Override
  public List<Product> findAll() throws Exception {
    return productMapper.findAllNull();
  }

	@Override
	public void deleteStroeProduct(int sno) throws Exception {
		productMapper.deleteStoreProduct(sno);

	}
	
	@Override
	public List<Product> findStoreProduct(int sno) throws Exception {
		return null;
	}

}
