package bitcamp.sodam.dao.mariadb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.UserDao;
import bitcamp.sodam.database.UserMapper;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private UserMapper userMapper;

	@Override
	public User findUser(String email, String pwd) throws Exception {
		return userMapper.findUser(email, pwd);
	}
	
	@Override
	public User findByNo(int uno) throws Exception {
	  return userMapper.findNo(uno);
	}

	@Override
	public List<User> findAll() throws Exception {
		return userMapper.findAll();
	}

	@Override
	public void addUser(User user) throws Exception {
		userMapper.addUser(user);
	}

	@Override
	public User findByNoUser(int uno) throws Exception {
		return userMapper.findNoUser(uno);
	}

	@Override
	public void editUser(User user) throws Exception {
		userMapper.editUser(user);
	}

	@Override
	public void deleteUser(int uno) throws Exception {
		userMapper.deleteUser(uno);
	}
	
}

