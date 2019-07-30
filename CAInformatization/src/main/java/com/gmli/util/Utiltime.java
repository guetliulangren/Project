package com.gmli.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * 
 * @author LGM 根据java代码规范，工具类应该不能被继承，定义为final
 */
public final class Utiltime {

    /**
     * java代码规范工具类不能有公有的构造器
     */
    private Utiltime() {

    }

    public static String getcurrenttime() {

        // JDK1.8获取当前系统时间年月日 时分秒
        LocalDateTime localDateTime = LocalDateTime.now();

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy:MM:dd::hh:mm:ss");

        String time = formatter.format(localDateTime);
        return time;

    }

}
