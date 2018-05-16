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

	public List<UserVo> allUsers() {
		return userDao.allUsers();
	}

	public void delUser(Integer id) {
//		userDao.delUser(id);
		userMapper.deleteByPrimaryKey(id);
	}

	public UserVo getUser(String id) {
		return userDao.getUser(id);
	}

	public void modUser(User user) {
//		userDao.modUser(user);
		userMapper.updateByPrimaryKeySelective(user);
	}

	public void addUser(UserVo user) {
		userDao.addUser(user);
	}

	public List<UserVo> allUsers(UserVo user) {
		return userDao.allUsers(user);
	}

}
