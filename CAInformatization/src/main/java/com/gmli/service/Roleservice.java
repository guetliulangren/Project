package com.gmli.service;

import org.apache.ibatis.annotations.Param;

public interface Roleservice {

	/**
	 * 修改用户角色
	 * 
	 * @param roleID
	 * @param user_name
	 */
	public void updateUprole(@Param("roleID") Integer roleID, @Param("userName") String user_name);

	/**
	 * 注销用户
	 * 
	 * @param user_name
	 */
	public void deleterole(@Param("userName") String user_name);
}
