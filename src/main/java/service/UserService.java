package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import domain.UserVo;
import dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	public List<UserVo> allUsers() {
		return userDao.allUsers();
	}

	public void delUser(String id) {
		userDao.delUser(id);
	}

	public UserVo getUser(String id) {
		return userDao.getUser(id);
	}

	public void modUser(UserVo user) {
		userDao.modUser(user);
	}

	public void addUser(UserVo user) {
		userDao.addUser(user);
	}
	
	public List<UserVo> allUsers(UserVo user) {
		return userDao.allUsers(user);
	}

}
