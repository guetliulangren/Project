package com.gmli.test;

import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.gmli.dao.UserMapper;
import com.gmli.pojo.User;
import com.gmli.service.UserService;
import com.gmli.service.impl.UserServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:conf/applicationContext.xml" })
public class Testtt {

	@Resource
	private UserService dao1;

	@Mock
	private UserMapper dao;

	@InjectMocks
	private UserServiceImpl membersService;

	@Before()
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);
	}

	/*
	 * @Test public void Testuser(){
	 * 
	 * 
	 * User u=new User(); u=dao.getUserByUserName("gmli"); System.out.println(u);
	 * System.out.println(u.getR().getRoleID());
	 * System.out.println(u.getR().getRole()); }
	 */

	/*
	 * 
	 * mock测试
	 * 
	 * 
	 */
	@Test
	public void insert() {

		List<User> list = new ArrayList<>();
		when(dao.getuser()).thenReturn(list);
		list = membersService.getuser();
		/*
		 * u.setUserName("lgm"); u.setPassword("125"); u.setAddress("南宁");
		 * u.setPhoneNumber(1253636); u.setRoleID(2); dao.addUser(u);
		 */
		list = dao1.getuser();
		for (User u : list) {

			System.out.println(u);

		}

	}

}
