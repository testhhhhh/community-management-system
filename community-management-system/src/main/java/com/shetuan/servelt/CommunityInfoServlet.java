package com.shetuan.servelt;

import com.shetuan.bean.Community;
import com.shetuan.bean.Member;
import com.shetuan.dao.CommunityDao;
import com.shetuan.dao.MemberDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommunityInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CommunityDao communityDao = new CommunityDao();
        Community community = null;
        community = communityDao.getCommunityByIdd(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("community", community);
        // 返回到成员信息页面
        request.getRequestDispatcher("admin/community_update.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
