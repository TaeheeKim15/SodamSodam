package bitcamp.sodam.dao.mariadb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.StoreDao;
import bitcamp.sodam.database.StoreMapper;

// Mybatis 적용
// => SqlSessionFactory를 자체적으로 생성하지 않고
//    생성자를 통해 외부에서 주입 받는다.(Dependency Injection: DI)
//

@Repository
public class StoreDaoImpl implements StoreDao {
	
	@Autowired
	private StoreMapper storeMapper;

	@Override
	public List<Store> findStoreList() throws Exception {
		return storeMapper.findStoreList();
	}
	@Override
	public int insertStore(Store store) throws Exception {
		return storeMapper.insertStore(store);
	}
	@Override
	public int deleteStore(int sno) throws Exception {
	return storeMapper.deleteStore(sno);
	}
	
	@Override
	public List<Category> findByNo() throws Exception {
	  return storeMapper.findByNo();
	}
	
	@Override
	public int updateStore(Store store) throws Exception {
		return storeMapper.updateStore(store);
	}
	
	@Override
	public int deleteCategory(int no) throws Exception {
	    return storeMapper.deleteCategory(no);
	}
	
	@Override
	public Store findByNoStore(int sno) throws Exception {
		return storeMapper.findByNoStore(sno);
	}
	
	@Override
	public List<Product> fintByStoreProduct() throws Exception {
		return storeMapper.findByStoreProduct();
	}
	@Override
	public int checkUnoCount(int uno) throws Exception {
		return storeMapper.checkUnoCount(uno);
	}
	@Override
	public User findUnoPwd(int uno, String pwd) throws Exception {
		return storeMapper.findPwd(uno, pwd);
	}
	
	@Override
	public List<User> findAll() throws Exception {
		return storeMapper.findAll();
	}
	@Override
	public Store getStore(int uno) throws Exception {
		return storeMapper.findByUnoStore(uno);
	}
}
