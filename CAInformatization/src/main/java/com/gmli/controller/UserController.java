package com.gmli.controller;

import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Msg;
import com.gmli.pojo.User;
import com.gmli.service.Logservice;
import com.gmli.service.UserService;
import com.gmli.util.MD5Utils;
import com.gmli.util.Utiltime;

@Controller("longin")
@RequestMapping(value = "user")
public class UserController {
    /**
     * 用户角色设置
     */
    private static final String ADMIN = "admin";
    private static final String USER = "user";
    /**
     * 定义接收数据库查询的数据，因为在使用Equals方法时如果同时调用set，get方法会抛出空指针异常
     */
    String dbpassord;
    String credicial;
    /**
     * 注入对象 UserService，便于调用service层的方法，对象生命周期由spring管理，不再通过new关键字 来创建，实现控制反转
     */
    @Resource
    private UserService userService;
    @Resource
    private Logservice logservice;

    /**
     * 登录功能实现 spring4.3以上支持快捷的url映射方式
     * 
     * @PostMapping相当于@RequestMapping(value = "",method=RequestMethod.POST)
     * @param username
     * @param password
     * @param httpSession
     * @return
     */
    @PostMapping(value = "/loginValidate")
    public String loginValidate(@RequestParam("username") String username, @RequestParam("password") String password,
        HttpSession httpSession) {
        User user = new User();
        /**
         * 从数据库查询数据
         */
        user = userService.getUserByUserName(username);

        /**
         * 如果对象不为空获取用户角色
         */
        if (user != null) {
            credicial = user.getR().getRole();
            dbpassord = user.getPassword();
            String pagepasswd = MD5Utils.getSaltMd5AndSha(password);

            /**
             * 记录日志
             */
            boolean token = MD5Utils.getSaltverifyMd5AndSha(dbpassord, pagepasswd);
            logservice.addlog(username, "执行了登录操作", Utiltime.getcurrenttime());
            /**
             * 如果用户名或密码正确跳转到管理员界面
             */
            if (token && credicial.equals(ADMIN)) {
                /**
                 * 携带信息
                 */

                httpSession.setAttribute("msgadmin", user.getUserName());

                return "manager";

            } else if (token && credicial.equals(USER)) {
                /**
                 * 如果用户名或密码正确跳转到用户界面
                 */
                /**
                 * 携带信息
                 */
                httpSession.setAttribute("msguser", user.getUserName());
                return "farmer";
            }
        }

        /**
         * 用户名或密码错误重定向到登录界面
         */
        httpSession.setAttribute("msg", "用户名或密码错误");
        return "redirect:../index.jsp";

    }

    /**
     * 注册新用户
     * 
     * @param username
     * @param password
     * @param address
     * @param phoneNumber
     * @return
     */
    @PostMapping("/register")
    @ResponseBody
    public Msg register(@RequestParam("username") String username, @RequestParam("password") String password,
        @RequestParam("address") String address, @RequestParam("phoneNumber") String phoneNumber

    ) {

        /**
         * 先进行非空判断否则会抛出空指针异常
         */

        if (username.equals("") || password.equals("")) {

            return Msg.fail().Message("用户名或密码不能为空");
        } else if (address.equals("") || phoneNumber.equals("")) {
            return Msg.fail().Message("住址或联系方式不能为空");
        }
        /**
         * 从页面接受参数封装成对象
         */

        User u = new User();
        u.setUserName(username.trim());
        u.setPassword(password.trim());
        u.setAddress(address.trim());
        u.setPhoneNumber(phoneNumber.trim());
        /**
         * 通过注册获得账号的用户角色都设置为普通用户
         */
        u.setRoleID(2);
        boolean b = userService.checkLogin(username);
        /**
         * 如果用户名已经存在则注册失败，否则注册成功，并携带注册成功或失败的数据返回
         * 
         */
        int size = password.length();
        if (size < 6) {

            return Msg.fail().Message("密码长度不能小于六位");

        }

        else if (b) {

            return Msg.fail().Message("该用户已存在");

        } else {

            userService.addUser(u);
            return Msg.success();

        }

    }

    /**
     * 校验注册名字
     * 
     * @param username
     * @return
     */
    @GetMapping("/check")
    @ResponseBody
    public Msg checkname(@RequestParam("username") String username) {
        /**
         * 校验注册时用户名是否重复
         */
        boolean b = userService.checkLogin(username);

        if (!b) {

            return Msg.success();
        } else {
            return Msg.fail();

        }

    }

    /**
     * 
     * 退出登录
     * 
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession httpSession) {
        Object vakue = null;
        // 获取session中所有的键值
        Enumeration<String> attrs = httpSession.getAttributeNames();
        // 遍历attrs中的
        while (attrs.hasMoreElements()) {
            // 获取session键值
            String name = attrs.nextElement().toString();
            // 根据键值取session中的值
            vakue = httpSession.getAttribute(name);

        }
        if (vakue != null) {
            /**
             * 记录操作日志
             */
            logservice.addlog(vakue.toString(), "执行了退出操作", Utiltime.getcurrenttime());
        }
        httpSession.removeAttribute("username");
        return "redirect:../index.jsp";
    }

}