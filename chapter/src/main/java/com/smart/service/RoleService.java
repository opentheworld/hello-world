package com.smart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smart.dao.RoleDao;
import com.smart.domain.Role;

@Service
public class RoleService {
	@Autowired
	private RoleDao roleDao;
	
	public int queryCount(){
		return roleDao.queryCount();
	}

	public Role findRoleByRoleid(int roleid){
		return roleDao.findRoleByRoleid(roleid);
	}
	public List<Role> getList(String roleid){
		return roleDao.getList(roleid);
	}
}
