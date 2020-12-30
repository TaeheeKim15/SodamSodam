package bitcamp.sodam.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.dao.StoreDao;

@Service
public class DefaultStoreService implements StoreService{
  
  @Autowired
    StoreDao storeDao;

    @Override
    public List<Store> list() throws Exception {
      List<Store> store = storeDao.findStoreList();
      return store;
    }
    
    @Override
    public int insertStore(Store store) throws Exception {
      return storeDao.insertStore(store);
    }
    
    @Override
    @Async
    public int deleteStore(int sno) throws Exception {
      return storeDao.deleteStore(sno);
    }
    
    @Override
    public List<Category> clist() throws Exception {
      List<Category> categoryNo = storeDao.findByNo();
      return categoryNo;
    }
    
    @Override
    	public Store get(int sno) throws Exception {
    		return storeDao.findByNoStore(sno);
    	}
    
    @Override
    @Async
    public int deleteCategory(int no) throws Exception {
            return storeDao.deleteCategory(no);
    }
  }
