package com.shetuan.servelt;

import com.shetuan.bean.Member;
import com.shetuan.dao.MemberDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 成员信息Servlet
 * 
 * @author Administrator
 */
public class UserMemberInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取界面传来的成员姓名
		String membername = request.getParameter("mname");
		// 调用memberdao方法获取member
		MemberDao memberDao = new MemberDao();
		Member member = memberDao.getMemberByName(membername);
		request.setAttribute("member", member);
		// 返回到成员信息页面
		request.getRequestDispatcher("my.account.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
