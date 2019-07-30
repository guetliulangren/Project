package com.gmli.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.LogMapper;
import com.gmli.pojo.Log;
import com.gmli.service.Logservice;

/**
 * @author LGM
 * @date 2019/04/13
 */
@Service("log")
public class Logserviceimpl implements Logservice {

    @Resource
    LogMapper logdao;

    /* (non-Javadoc)
     * @see com.gmli.service.Logservice#selectlog()
     */
    @Override
    public List<Log> selectlog() {
        // TODO Auto-generated method stub
        return logdao.selectlog();
    }

    /* (non-Javadoc)
     * @see com.gmli.service.Logservice#insertlog(java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public void addlog(String Namelog, String loginfo, String logtime) {

        logdao.insertlog(Namelog, loginfo, logtime);
    }

}
