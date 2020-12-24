package bitcamp.sodam.service;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.UserDao;

@Service
public class DefaultUserService implements UserService {

	@Autowired
	UserDao userDao;

	@Override
	public User get(String email, String pwd) throws Exception {
		User user = userDao.findUser(email, pwd);
		return user;
	}

	@Override
	public User get(int uno) throws Exception {
	  User user = userDao.findByNo(uno);
	return user;
	}

	@Override
	public List<User> list() throws Exception {
		List<User> list = userDao.findAll();
		return list;
	}

	@Override
	public User getUser(int uno) throws Exception {
		User user = userDao.findByNoUser(uno);
		return user;
	}

	@Override
	public void delete(int no) throws Exception {
		userDao.deleteUser(no);
		
	}
}
