package com.gmli.controller;

import java.io.InputStream;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gmli.service.Exportexcelservice;

/**
 * @author LGM
 * @date 2019/04/23
 */
@Controller
@RequestMapping("Export")
public class ExportexcelController {
    @Resource
    Exportexcelservice exportservice;

    @RequestMapping(value = "/Exportexcel", method = RequestMethod.GET)
    public void export(HttpServletResponse response) throws Exception {

        InputStream is = exportservice.getInputStream();
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("contentDisposition", "attachment;filename=AllUsers.xls");
        ServletOutputStream output = response.getOutputStream();
        IOUtils.copy(is, output);
    }

    @RequestMapping(value = "/exportoder", method = RequestMethod.GET)
    public void exportorder(HttpServletResponse response) throws Exception {

        InputStream is = exportservice.getorderInputStream();
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("contentDisposition", "attachment;filename=AllUsers.xls");
        ServletOutputStream output = response.getOutputStream();
        IOUtils.copy(is, output);
    }

}
