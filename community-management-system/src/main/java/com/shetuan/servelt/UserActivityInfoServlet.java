package com.shetuan.servelt;

import com.shetuan.bean.Activity;
import com.shetuan.dao.ActivityDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserActivityInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String aid = request.getParameter("aid");

        ActivityDao activityDao = new ActivityDao();
        Activity activity = new Activity();
        activity =activityDao.getActivityById(Integer.parseInt(aid));
        request.setAttribute("activity", activity);
        System.out.println(activity.toString());
        // 返回到成员信息页面
        request.getRequestDispatcher("activityshow.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
