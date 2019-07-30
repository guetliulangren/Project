package com.gmli.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.gmli.dao.LogMapper;
import com.gmli.pojo.Log;

/**
 * @author LGM
 * @date 2019/04/13
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:conf/applicationContext.xml"})
public class Testlog {

    @Resource
    private LogMapper logdao;

    @Test
    public void Testinfo() {

        /* logdao.insertlog("gmli", "执行了登录操作", Utiltime.getcurrenttime());*/
        List<Log> list = logdao.selectlog();
        for (Log log : list) {

            log.getLogid();
            log.getLoginfo();
            log.getLogtime();
            System.out.println(log);

        }

    }
}
