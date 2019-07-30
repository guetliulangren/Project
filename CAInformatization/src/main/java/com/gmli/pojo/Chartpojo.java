package com.gmli.pojo;

import java.io.Serializable;

/**
 * @author LGM
 * @date 2019/05/15
 */
public class Chartpojo implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private Integer value;
    private String name;

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
