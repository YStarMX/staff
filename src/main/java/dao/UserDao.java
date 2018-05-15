package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import domain.UserVo;

@Repository
public class UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<UserVo> allUsers() {
		String sqlStr = " SELECT * FROM user ";
		final List<UserVo> userList = new ArrayList<UserVo>();
		jdbcTemplate.query(sqlStr, new RowCallbackHandler() {
			public void processRow(ResultSet rs) throws SQLException {
				UserVo user = new UserVo();
				user.setId(rs.getString("id"));
				user.setName(rs.getString("name"));
				user.setAge(rs.getString("age"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setRole(rs.getString("role"));
				userList.add(user);
			}
		});
		return userList;
	}

	public void delUser(String id) {
		String sqlStr = "DELETE FROM user WHERE id = ?";
		jdbcTemplate.update(sqlStr, new Object[] { id });
	}

	public UserVo getUser(String id) {
		String sqlStr = " SELECT * FROM user where id = ?";
		final UserVo user = new UserVo();
		jdbcTemplate.query(sqlStr, new Object[] { id },
				new RowCallbackHandler() {
					public void processRow(ResultSet rs) throws SQLException {
						user.setId(rs.getString("id"));
						user.setName(rs.getString("name"));
						user.setAge(rs.getString("age"));
						user.setPhone(rs.getString("phone"));
						user.setAddress(rs.getString("address"));
						user.setRole(rs.getString("role"));
					}
				});
		return user;
	}

	public void modUser(UserVo user) {
		String sqlStr = " update user set name = ? , age = ? , phone = ? , address = ? , role = ? where id = ?";
		jdbcTemplate.update(sqlStr,
				new Object[] { user.getName(), user.getAge(), user.getPhone(),
						user.getAddress(), user.getRole(), user.getId() });
	}

	public void addUser(UserVo user) {
		String sqlStr = " INSERT INTO user (name, age, phone, address, role) VALUES (?,?,?,?,?)";
		jdbcTemplate.update(sqlStr,
				new Object[] { user.getName(), user.getAge(), user.getPhone(),
						user.getAddress(), user.getRole() });
	}
	
	public List<UserVo> allUsers(UserVo user) {
		String sqlStr = " SELECT * FROM user WHERE 1=1 ";
		if (user.getId() != null && !user.getId().isEmpty()) {
			sqlStr += " and id = " + user.getId();
		}
		if (user.getName() != null && !user.getName().isEmpty()) {
			sqlStr += " and name like '%" + user.getName() + "%'";
		}
		if (user.getAge() != null && !user.getAge().isEmpty()) {
			sqlStr += " and age = " + user.getAge();
		}
		if (user.getPhone() != null && !user.getPhone().isEmpty()) {
			sqlStr += " and phone like '%" + user.getPhone() + "%'";
		}
		if (user.getAddress() != null && !user.getAddress().isEmpty()) {
			sqlStr += " and address like '%" + user.getAddress() + "%'";
		}
		if (user.getRole() != null && !user.getRole().isEmpty()) {
			sqlStr += " and role = '" + user.getRole() + "'";
		}
		final List<UserVo> userList = new ArrayList<UserVo>();
		jdbcTemplate.query(sqlStr, new RowCallbackHandler() {
			public void processRow(ResultSet rs) throws SQLException {
				UserVo user = new UserVo();
				user.setId(rs.getString("id"));
				user.setName(rs.getString("name"));
				user.setAge(rs.getString("age"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setRole(rs.getString("role"));
				userList.add(user);
			}
		});
		return userList;
	}

}
