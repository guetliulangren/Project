package com.gmli.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.gmli.dao.RepositoryMapper;
import com.gmli.pojo.Repositorypojo;
import com.gmli.util.Utiltime;
import com.gmli.util.Uuidok;

/**
 * @author LGM
 * @date 2019/05/15
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:conf/applicationContext.xml"})
public class Testrespoty {

    @Resource
    private RepositoryMapper repositoryMapper;

    @Test
    public void insert() {

        Repositorypojo repositorypojo = new Repositorypojo();
        repositorypojo.setProductsType("fff");
        repositorypojo.setProductsPrice(10);
        repositorypojo.setProductsStatus(1);
        repositorypojo.setProductsNumber(10);
        repositorypojo.setProductsName("ddd");
        repositorypojo.setProductstime(Utiltime.getcurrenttime());
        repositorypojo.setProductsphone("1125");
        repositorypojo.setProductsaddress("ddfdfff");
        repositorypojo.setProductsuuid(Uuidok.getuuid());
        repositorypojo.setOrderprice(100);
        repositoryMapper.insertrepositorypojo(repositorypojo);
        System.out.println(repositorypojo);

    }

}
