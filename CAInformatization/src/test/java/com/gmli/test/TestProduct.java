package com.gmli.test;

import static org.mockito.Mockito.when;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.gmli.dao.ProductMapper;
import com.gmli.pojo.Product;
import com.gmli.service.Productservice;
import com.gmli.service.impl.Productserviceimpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:conf/applicationContext.xml"})
public class TestProduct {
    @Resource
    private Productservice dao1;

    @Mock
    private ProductMapper dao;

    @InjectMocks
    private Productserviceimpl productserviceimpl;

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

        Product product = new Product();
        when(dao.selectproductbyUUID("3752b834-b8a2-4c4c-96b3-3b18b5361a19")).thenReturn(product);
        product = dao1.selectproductbyUUID("3752b834-b8a2-4c4c-96b3-3b18b5361a19");

        System.out.println(product);

    }
}
