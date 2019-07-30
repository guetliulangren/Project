package com.gmli.pojo;

import java.io.Serializable;

/**
 * @author LGM
 * @date 2019/05/20
 */
public class Supermanager implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer userID;
    private String userName;
    private String password;
    private String address;
    private String phoneNumber;
    private Integer roleID;

    public Supermanager() {}

    public Supermanager(Integer userID, String userName, String password, String address, String phoneNumber,
        Integer roleID) {
        super();
        this.userID = userID;
        this.userName = userName;
        this.password = password;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.roleID = roleID;
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;

    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getRoleID() {
        return roleID;
    }

    public void setRoleID(Integer roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "Supermanager [userID=" + userID + ", userName=" + userName + ", password=" + password + ", address="
            + address + ", phoneNumber=" + phoneNumber + ", roleID=" + roleID + "]";
    }

}
