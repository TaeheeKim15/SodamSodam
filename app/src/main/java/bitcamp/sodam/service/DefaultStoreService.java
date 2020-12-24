package bitcamp.sodam.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
    public int deleteStore(int sno) throws Exception {
      return storeDao.deleteStore(sno);
    }
    
    @Override
    public List<Store> list(int sno) throws Exception {
      List<Store> store = storeDao.findByNo(sno);
      return store;
    }
  }
