package com.gmli.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gmli.pojo.Log;

/**
 * @author LGM
 * @date 2019/04/13
 */
public interface LogMapper {

    public List<Log> selectlog();

    public void insertlog(@Param("Namelog") String Namelog, @Param("loginfo") String loginfo,
        @Param("logtime") String logtime);

}
