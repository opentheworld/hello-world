package com.smart.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.smart.domain.User;
@Repository
public class UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public User findUserById(final int id){
		String sql = "select * from t_user where user_id=?";
		final User user = new User();
		jdbcTemplate.query(sql, new Object[]{id}, new RowCallbackHandler(){
			public void processRow(ResultSet rs)throws SQLException{
				user.setId(id);
				user.setUsername(rs.getString("user_name"));
				user.setPassword(rs.getString("password"));
				user.setLastvisit(rs.getDate("last_visit"));
				user.setLastip(rs.getString("last_ip"));
			}
		});
		
		return user;
		
	}

}
