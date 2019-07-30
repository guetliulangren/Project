package com.gmli.pojo;

import java.io.Serializable;

/**
 * @author LGM
 * @date 2019/04/13
 */
public class Log implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private Integer logid;
    // 操作人
    private String Namelog;
    // 操作日志
    private String loginfo;
    // 操作时间
    private String logtime;

    public Integer getLogid() {
        return logid;
    }

    public void setLogid(Integer logid) {
        this.logid = logid;
    }

    public String getNamelog() {
        return Namelog;
    }

    public void setNamelog(String namelog) {
        Namelog = namelog;
    }

    public String getLoginfo() {
        return loginfo;
    }

    public void setLoginfo(String loginfo) {
        this.loginfo = loginfo;
    }

    public String getLogtime() {
        return logtime;
    }

    public void setLogtime(String logtime) {
        this.logtime = logtime;
    }

    @Override
    public String toString() {
        return "Log [logid=" + logid + ", Namelog=" + Namelog + ", loginfo=" + loginfo + ", logtime=" + logtime + "]";
    }

}
