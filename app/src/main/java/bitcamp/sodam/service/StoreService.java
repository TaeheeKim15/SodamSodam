package bitcamp.sodam.service;

import java.util.List;
import bitcamp.sodam.beans.Store;
public interface StoreService {
  List<Store> list() throws Exception;
  int insertStore(Store store) throws Exception;
  int deleteStore(int sno) throws Exception;
  List<Store> list(int sno) throws Exception;
}
