package com.gmli.service;

import java.io.InputStream;

/**
 * @author LGM
 * @date 2019/04/23
 */
public interface Exportexcelservice {

    InputStream getInputStream() throws Exception;

    public InputStream getorderInputStream() throws Exception;
}
