package com.gmli.pojo;

import java.io.Serializable;

/**
 * @author LGM
 * @date 2019/05/21
 */
public class Comment implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private Integer reportid;
    private String reportname;
    private String reporttitle;
    private String reportcomment;
    private String reporttime;

    public Comment() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Comment(Integer reportid, String reportname, String reporttitle, String reportcomment) {
        super();
        this.reportid = reportid;
        this.reportname = reportname;
        this.reporttitle = reporttitle;
        this.reportcomment = reportcomment;
    }

    public Integer getReportid() {
        return reportid;
    }

    public void setReportid(Integer reportid) {
        this.reportid = reportid;
    }

    public String getReportname() {
        return reportname;
    }

    public void setReportname(String reportname) {
        this.reportname = reportname;
    }

    public String getReporttitle() {
        return reporttitle;
    }

    public void setReporttitle(String reporttitle) {
        this.reporttitle = reporttitle;
    }

    public String getReportcomment() {
        return reportcomment;
    }

    public void setReportcomment(String reportcomment) {
        this.reportcomment = reportcomment;
    }

    public String getReporttime() {
        return reporttime;
    }

    public void setReporttime(String reporttime) {
        this.reporttime = reporttime;
    }

    @Override
    public String toString() {
        return "Comment [reportid=" + reportid + ", reportname=" + reportname + ", reporttitle=" + reporttitle
            + ", reportcomment=" + reportcomment + "]";
    }

}
