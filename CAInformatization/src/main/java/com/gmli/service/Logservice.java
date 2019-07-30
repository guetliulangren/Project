package com.gmli.service;

import java.util.List;

import com.gmli.pojo.Log;

/**
 * @author LGM
 * @date 2019/04/13
 */
public interface Logservice {

    /**
     * 查询日志
     * 
     * @return
     */
    public List<Log> selectlog();

    /**
     * 插入日志
     * 
     * @param Namelog
     * @param loginfo
     * @param logtime
     */
    public void addlog(String Namelog, String loginfo, String logtime);

}
