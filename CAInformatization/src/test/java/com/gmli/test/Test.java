package com.gmli.test;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.gmli.dao.ProductMapper;
import com.gmli.pojo.Product;

/**
 * @author LGM
 * @date 2019/04/13
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:conf/applicationContext.xml"})
public class Test {
    @Resource
    private ProductMapper dao;

    @org.junit.Test
    public void TestSetup() {
        Product product = new Product();
        /* product.setProductsType("水果");
        product.setProductsPrice(10);
        product.setProductsStatus(0);
        product.setProductsNumber(10);
        product.setProductsName("苹果");
        product.setProductstime(Utiltime.getcurrenttime());
        product.setProductsfamername("lol");
        product.setProductsphone("15077307136");
        product.setProductsaddress("广西百色");
        dao.insertproduct(product);*/
        /* List<Product> list = dao.selectproduct("lol");
        for (Product p : list) {
            System.out.println(p);
        }*/

        product = dao.selectproductbyUUID("9a635aa2-d001-4e61-8b15-588ac8fd7dbb");
        System.out.println(product);
    }
}
