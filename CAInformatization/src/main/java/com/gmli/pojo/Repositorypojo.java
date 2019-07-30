package com.gmli.pojo;

import java.io.Serializable;

/**
 * @author LGM
 * @date 2019/05/15
 */
public class Repositorypojo implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private Integer productsID;
    private String productsType;
    private Integer productsPrice;
    private Integer productsNumber;
    private Integer productsStatus;
    private String productsName;
    private String productstime;
    private String productsphone;
    private String productsaddress;
    private String productsuuid;
    private Integer orderprice;

    public Integer getProductsID() {
        return productsID;
    }

    public void setProductsID(Integer productsID) {
        this.productsID = productsID;
    }

    public String getProductsType() {
        return productsType;
    }

    public void setProductsType(String productsType) {
        this.productsType = productsType;
    }

    public Integer getProductsPrice() {
        return productsPrice;
    }

    public void setProductsPrice(Integer productsPrice) {
        this.productsPrice = productsPrice;
    }

    public Integer getProductsNumber() {
        return productsNumber;
    }

    public void setProductsNumber(Integer productsNumber) {
        this.productsNumber = productsNumber;
    }

    public Integer getProductsStatus() {
        return productsStatus;
    }

    public void setProductsStatus(Integer productsStatus) {
        this.productsStatus = productsStatus;
    }

    public String getProductsName() {
        return productsName;
    }

    public void setProductsName(String productsName) {
        this.productsName = productsName;
    }

    public String getProductstime() {
        return productstime;
    }

    public void setProductstime(String productstime) {
        this.productstime = productstime;
    }

    public String getProductsphone() {
        return productsphone;
    }

    public void setProductsphone(String productsphone) {
        this.productsphone = productsphone;
    }

    public String getProductsaddress() {
        return productsaddress;
    }

    public void setProductsaddress(String productsaddress) {
        this.productsaddress = productsaddress;
    }

    public String getProductsuuid() {
        return productsuuid;
    }

    public void setProductsuuid(String productsuuid) {
        this.productsuuid = productsuuid;
    }

    public Integer getOrderprice() {
        return orderprice;
    }

    public void setOrderprice(Integer orderprice) {
        this.orderprice = orderprice;
    }

}
