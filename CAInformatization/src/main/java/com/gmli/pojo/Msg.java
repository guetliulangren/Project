package com.gmli.pojo;

import java.util.HashMap;
import java.util.Map;

public class Msg {

	private int code;
	private String msg;
	private String message;
	// 用户要返回给浏览器的数据
	private Map<String, Object> extend = new HashMap<String, Object>();

	public static Msg success()

	{
		Msg result = new Msg();
		/**
		 * 封装状态码
		 */
		result.setCode(100);
		result.setMsg("成功");
		return result;

	}

	public static Msg fail()

	{
		/**
		 * 封装状态码
		 */
		Msg result = new Msg();
		result.setCode(200);
		result.setMsg("失败");
		return result;

	}

	public Msg Message(String string) {

		Msg result = new Msg();
		result.setMessage(string);

		return result;
	}

	public Msg add(String key, Object value) {

		this.getExtend().put(key, value);

		// TODO Auto-generated method stub
		return this;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Map<String, Object> getExtend() {
		return extend;
	}

	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}

}
