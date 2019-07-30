package com.gmli.pojo;

import java.io.Serializable;

/**
 * 序列化实体类
 */
public class User implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    /*
     * CREATE TABLE `user` ( `userID` bigint(255) NOT NULL, `userName` varchar(255)
     * DEFAULT NULL, `password` varchar(255) DEFAULT NULL, `adress` varchar(255)
     * DEFAULT NULL, `phoneNumber` int(255) DEFAULT NULL, `roleID` int(10) DEFAULT
     * NULL, PRIMARY KEY (`userID`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
     */
    private Integer userID;
    private String userName;
    private String password;
    private String address;
    private String phoneNumber;
    private Integer roleID;
    private Role r;

    public User() {}

    public User(Integer userID, String userName, String password, String adress, String phoneNumber, Integer roleID,
        Role r) {
        this.userID = userID;
        this.userName = userName;
        this.password = password;
        this.address = adress;
        this.phoneNumber = phoneNumber;
        this.roleID = roleID;
        this.r = r;
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

    public Role getR() {
        return r;
    }

    public void setR(Role r) {
        this.r = r;
    }

    @Override
    public String toString() {
        return "User{" + "userID=" + userID + ", userName='" + userName + '\'' + ", password='" + password + '\''
            + ", adress='" + address + '\'' + ", phoneNumber=" + phoneNumber + ", roleID=" + roleID + ", r=" + r + '}';
    }
}
