package com.gmli.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Msg;
import com.gmli.pojo.Product;
import com.gmli.service.Productservice;
import com.gmli.util.Utiltime;
import com.gmli.util.Uuidok;

/**
 * @author LGM
 *
 */
@Controller("AddProductController")
@RequestMapping("AddProduct")
public class AddProductController {
    @Resource
    Productservice productservice;
    private static final Logger LOGGER = LoggerFactory.getLogger(AddProductController.class);

    @PostMapping("product")
    @ResponseBody
    public Msg addproduct(@RequestParam("productsType") String productsType,
        @RequestParam("productsPrice") String productsPrice, @RequestParam("productsNumber") String productsNumber,
        @RequestParam("productsName") String productsName, @RequestParam("productsfamername") String productsfamername,
        @RequestParam("productsphone") String productsphone, @RequestParam("productsaddress") String productsaddress) {
        Product product = new Product();
        product.setProductsType(productsType);
        product.setProductsPrice(Integer.parseInt(productsPrice));
        product.setProductsStatus(0);
        product.setProductsNumber(Integer.parseInt(productsNumber));
        product.setProductsName(productsName);
        product.setProductstime(Utiltime.getcurrenttime());
        product.setProductsfamername(productsfamername);
        product.setProductsphone(productsphone);
        product.setProductsaddress(productsaddress);
        product.setProductsuuid(Uuidok.getuuid());
        try {
            productservice.addproduct(product);
            return Msg.success().Message("添加成功");

        } catch (RuntimeException e) {
            // TODO: handle exception
            LOGGER.info("添加异常", e);

        }

        return Msg.fail().Message("添加失败");

    }
}
