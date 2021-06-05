package com.shetuan.servelt;

import com.shetuan.util.GithubConfig;
import com.shetuan.util.HttpRequestUtils;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

//@WebServlet(name = "/GithubLogingCallBack")
public class GithubLogingCallBack extends javax.servlet.http.HttpServlet {
    @Override
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    @Override
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException, IOException {

        //获取code地址：https://github.com/login/oauth/authorize?client_id=你的client_id
        String code = request.getParameter("code");
        System.out.println("code："+code);

        //申请令牌
        String result = HttpRequestUtils.sendGet( GithubConfig.getTokenUrl(code) );
        System.out.println("result："+result);

        //从result中截取令牌
        String access_token = HttpRequestUtils.getMap(result).get("access_token");
        System.out.println("access_token："+access_token);

        //通过令牌获取用户信息
        String userInfo = GithubConfig.getUerInfoUrl(access_token);
        System.out.println("用户信息："+userInfo);

        //将token加入响应头,并返回用户信息
        response.setHeader("Authorization","token "+access_token);
        response.getWriter().println(userInfo);

    }
}

