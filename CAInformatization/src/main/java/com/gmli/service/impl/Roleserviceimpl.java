package com.gmli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.UserMapper;
import com.gmli.service.Roleservice;

@Service("roleservice")
public class Roleserviceimpl implements Roleservice {
	@Resource
	private UserMapper dao;

	/**
	 * 更改用户角色
	 */
	@Override
	public void updateUprole(Integer roleID, String user_name) {
		// TODO Auto-generated method stub
		dao.uprole(roleID, user_name);

	}

	/**
	 * 注销用户
	 */
	@Override
	public void deleterole(String user_name) {
		// TODO Auto-generated method stub
		dao.derole(user_name);

	}

	/**
	 * 修改用户角色
	 */

}
