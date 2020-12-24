package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.User;

public interface UserService {
  User get(String email, String pwd) throws Exception;
  User get(int uno) throws Exception;
  User getUser(int uno) throws Exception;
  List<User> list() throws Exception;
  void delete(int no) throws Exception;
}
