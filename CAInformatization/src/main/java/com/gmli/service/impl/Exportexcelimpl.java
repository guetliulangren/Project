package com.gmli.service.impl;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.OrderInfoMapper;
import com.gmli.dao.UserMapper;
import com.gmli.poi.WriteExcel;
import com.gmli.pojo.OrderInfo;
import com.gmli.pojo.User;
import com.gmli.service.Exportexcelservice;

/**
 * @author LGM
 * @date 2019/04/23
 */
@Service("excel")
public class Exportexcelimpl implements Exportexcelservice {
    @Resource
    private UserMapper userMapper;
    @Resource
    OrderInfoMapper orderInfoMapper;

    public InputStream getInputStream() throws Exception {
        String[] title = new String[] {"userID", "userName", "password", "address", "phoneNumber"};
        List<User> plist = userMapper.getuser();
        List<Object[]> dataList = new ArrayList<Object[]>();
        for (int i = 0; i < plist.size(); i++) {
            Object[] obj = new Object[5];
            obj[0] = plist.get(i).getUserID();
            obj[1] = plist.get(i).getUserName();
            obj[2] = plist.get(i).getPassword();
            obj[3] = plist.get(i).getAddress();
            obj[4] = plist.get(i).getPhoneNumber();
            dataList.add(obj);

        }
        WriteExcel ex = new WriteExcel(title, dataList);
        InputStream in;
        in = ex.export();
        return in;

    }

    public InputStream getorderInputStream() throws Exception {
        String[] title =
            new String[] {"主键", "类型", "价格", "数量", "状态", "产品名", "时间", "农户名", "联系电话", "地址", "订单号", "总价格", "操作人"};
        List<OrderInfo> plist = orderInfoMapper.selectorder();
        List<Object[]> dataList = new ArrayList<Object[]>();
        for (int i = 0; i < plist.size(); i++) {
            Object[] obj = new Object[13];
            obj[0] = plist.get(i).getProductsID();
            obj[1] = plist.get(i).getProductsType();
            obj[2] = plist.get(i).getProductsPrice();
            obj[3] = plist.get(i).getProductsNumber();
            obj[4] = plist.get(i).getProductsStatus();
            obj[5] = plist.get(i).getProductsName();
            obj[6] = plist.get(i).getProductstime();
            obj[7] = plist.get(i).getProductsfamername();
            obj[8] = plist.get(i).getProductsphone();
            obj[9] = plist.get(i).getProductsaddress();
            obj[10] = plist.get(i).getProductsuuid();
            obj[11] = plist.get(i).getOrderprice();
            obj[12] = plist.get(i).getOperatename();

            dataList.add(obj);

        }
        WriteExcel ex = new WriteExcel(title, dataList);
        InputStream in;
        in = ex.export();
        return in;

    }

}
