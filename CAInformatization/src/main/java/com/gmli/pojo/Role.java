package com.gmli.pojo;

import java.io.Serializable;

public class Role implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer roleID;
    private String role;

    public Integer getRoleID() {
        return roleID;
    }

    public void setRoleID(Integer roleID) {
        this.roleID = roleID;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
