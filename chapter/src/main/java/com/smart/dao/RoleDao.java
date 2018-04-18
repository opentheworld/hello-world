package com.smart.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.smart.domain.Role;

@Repository
public class RoleDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@SuppressWarnings("deprecation")
	public int queryCount(){
		String sql = "select count(*) from dis_role";
		return jdbcTemplate.queryForInt(sql);
	}
	
	public Role findRoleByRoleid(final int roleid){
		String sql = "select * from dis_role where roleid=?";
		final Role role = new Role();
		jdbcTemplate.query(sql, new Object[]{roleid}, new RowCallbackHandler(){
			public void processRow(ResultSet rs)throws SQLException{
				role.setRoleid(roleid);
				role.setName(rs.getString("name"));
				role.setCreator(rs.getString("creator"));
				role.setCreatetime(rs.getDate("createtime"));
				role.setRoledesc(rs.getString("roledesc"));
			}
		});
		
		return role;
		
	}
	
	public List<Role> getList(String roleid){
		List<Role> list=null;
		String sql = "select * from dis_role where 1=1 ";
		if(!"".equals(roleid)&&roleid!=null){
			int id = Integer.parseInt(roleid);
			sql+=" and roleid=? ";
			list = jdbcTemplate.query(sql, new Object[]{id}, new ItemMapper());
		}else{
			list = jdbcTemplate.query(sql, new ItemMapper());
		}
		return list;
	}
	
	protected class ItemMapper implements RowMapper{
		public Role mapRow(ResultSet rs,int rowNum)throws SQLException{
			Role role = new Role();
			role.setRoleid(rs.getInt("roleid"));
			role.setName(rs.getString("name"));
			role.setCreator(rs.getString("creator"));
			role.setCreatetime(rs.getDate("createtime"));
			role.setRoledesc(rs.getString("roledesc"));
			return role;
		} 
	} 
}
