package service;

import java.util.List;

import mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vo.User;
import domain.UserVo;
import dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private UserMapper userMapper;

	public List<User> allUsers() {
//		return userDao.allUsers();
		return userMapper.getAllUser();
	}

	public void delUser(Integer id) {
//		userDao.delUser(id);
		userMapper.deleteByPrimaryKey(id);
	}

	public User getUser(Integer id) {
//		return userDao.getUser(id);
		return userMapper.selectByPrimaryKey(id);
	}

	public void modUser(User user) {
//		userDao.modUser(user);
		userMapper.updateByPrimaryKeySelective(user);
	}

	public void addUser(User user) {
//		userDao.addUser(user);
		userMapper.insert(user);
	}

	public List<User> getUserSelective(User user) {
//		return userDao.allUsers(user);
		return userMapper.getUserSelective(user);
	}

}
