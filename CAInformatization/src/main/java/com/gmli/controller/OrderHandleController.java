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
import com.gmli.pojo.OrderInfo;
import com.gmli.pojo.Product;
import com.gmli.pojo.Repositorypojo;
import com.gmli.service.OrderInfoservice;
import com.gmli.service.Productservice;
import com.gmli.service.Repositoryservice;
import com.gmli.util.Utiltime;

/**
 * @author LGM
 * @date 2019/05/14
 */
@Controller("OrderHandleController")
@RequestMapping("order")
public class OrderHandleController {
    private static final Logger LOGGER = LoggerFactory.getLogger(OrderHandleController.class);
    @Resource
    private Productservice productservice;
    @Resource
    private OrderInfoservice orderInfoservice;
    @Resource
    private Repositoryservice repositoryservice;

    @PostMapping(value = "handle")
    @ResponseBody
    public Msg handleorder(@RequestParam("productnumber") String productnumber,
        @RequestParam("productsuuid") String productsuuid, @RequestParam("operatename") String operatename) {
        Product product = new Product();
        Integer number = Integer.parseInt(productnumber);
        product = productservice.selectproductbyUUID(productsuuid);
        if (number < 0) {

            return Msg.fail().Message("输入必须大于0,请重新输入");
        }
        // 如果收购数量大于库存或者库存为1则返回错误提示信息
        if (number > product.getProductsNumber() || product.getProductsNumber() < 0) {

            return Msg.fail();

        } else {

            try {
                OrderInfo orderInfo = new OrderInfo();
                orderInfo.setProductsType(product.getProductsType());
                orderInfo.setProductsPrice(product.getProductsPrice());
                orderInfo.setProductsStatus(product.getProductsStatus());
                orderInfo.setProductsNumber(number);
                orderInfo.setProductsName(product.getProductsName());
                orderInfo.setProductstime(Utiltime.getcurrenttime());
                orderInfo.setProductsfamername(product.getProductsfamername());
                orderInfo.setProductsphone(product.getProductsphone());
                orderInfo.setProductsaddress(product.getProductsaddress());
                orderInfo.setProductsuuid(productsuuid);
                orderInfo.setOrderprice(product.getProductsPrice() * number);
                orderInfo.setOperatename(operatename);
                // 生成订单记录
                orderInfoservice.addorder(orderInfo);
                // 修改库存信息
                productservice.updaterepertory(product.getProductsNumber() - number, productsuuid);
                // 从数据库读取最新的库存
                product = productservice.selectproductbyUUID(productsuuid);
                if (product.getProductsNumber() == 0) {
                    productservice.updateproductinfo(1, productsuuid);
                }
                Repositorypojo repositorypojo = new Repositorypojo();
                repositorypojo = repositoryservice.queryrepositorybyname(product.getProductsName());

                // 如果库存不存在该类则插入
                if (null == repositorypojo) {
                    Repositorypojo repository = new Repositorypojo();
                    repository.setProductsType(product.getProductsType());
                    repository.setProductsPrice(product.getProductsPrice());
                    repository.setProductsStatus(product.getProductsStatus());
                    repository.setProductsNumber(number);
                    repository.setProductsName(product.getProductsName());
                    repository.setProductstime(Utiltime.getcurrenttime());
                    repository.setProductsphone(product.getProductsphone());
                    repository.setProductsaddress(product.getProductsaddress());
                    repository.setProductsuuid(productsuuid);
                    repository.setOrderprice(product.getProductsPrice() * number);
                    repositoryservice.saverepositorypojo(repository);

                } else {

                    Integer total = product.getProductsPrice() * number;
                    repositorypojo.setProductsNumber(repositorypojo.getProductsNumber() + number);
                    repositorypojo.setOrderprice(repositorypojo.getOrderprice() + total);
                    repositoryservice.updaterepositorypojo(repositorypojo);

                }

            } catch (Exception e) {
                // TODO: handle exception
                LOGGER.info("处理订单异常", e);
            }

            System.out.println(Msg.success().getCode());
            return Msg.success();

        }

    }

}
