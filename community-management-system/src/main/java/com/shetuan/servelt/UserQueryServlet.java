package com.shetuan.servelt;

import com.shetuan.bean.*;
import com.shetuan.dao.*;
import com.shetuan.util.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 所有的查询servlet
 * 
 * @author Administrator
 */
public class UserQueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取界面传来的判断参数
		String lru = request.getParameter("lru");
//		String go = request.getParameter("go");
		MemberDao memberdao = new MemberDao();
		if (lru.equals("ulist")) {// 查询所有的member，结果集

			String cpagestr = request.getParameter("cpage");
			System.out.println("MemberServlet-获取所有member:" + cpagestr);
			int cpage = 1;
			if (cpagestr != null) {
				cpage = Integer.parseInt(cpagestr.trim());
			}

			Page page = new Page();
			page.setPageCurrent(cpage);

			List<Member> members = memberdao.getMembersForPage(page);

			request.setAttribute("members", members);
			request.setAttribute("page", page);
			// 跳转到成员列表界面
			request.getRequestDispatcher("member_list.jsp").forward(request, response);
		}
		else if (lru.equals("clist")) {// 查询所有的社团，结果集

			CommunityDao communitydao = new CommunityDao();
			String cpagestr = request.getParameter("cpage");
			int cpage = 1;
			if (cpagestr != null) {
				cpage = Integer.parseInt(cpagestr.trim());
			}
			Page page = new Page();
			page.setPageCurrent(cpage);
			page.setPageSize(5);

			List<Community> communities = communitydao.getCommunitiesForPage(page);

			NoticeDao noticeDao = new NoticeDao();

			List<Notice> notices = noticeDao.getNoticeForPage(page);
			request.setAttribute("notices", notices);
			request.setAttribute("page", page);

			ActivityDao activityDao = new ActivityDao();

			List<Activity> activities = activityDao.getActivitiesForPage(page);
			request.setAttribute("activities", activities);
			request.setAttribute("page", page);




			request.setAttribute("Community", communities);
			request.setAttribute("com", communities.get(1));
			request.setAttribute("page", page);


			// 跳转到社团列表界面
			request.getRequestDispatcher("list-view.jsp").forward(request, response);


		}
		else if (lru.equals("alist")) {// 查询时所有的社团活动，结果集

			ActivityDao activityDao = new ActivityDao();
			String cpagestr = request.getParameter("cpage");
			int cpage = 1;
			if (cpagestr != null) {
				cpage = Integer.parseInt(cpagestr.trim());
			}

			Page page = new Page();
			page.setPageCurrent(cpage);
			List<Activity> activities = activityDao.getActivitiesForPage(page);
			request.setAttribute("activity", activities);
			request.setAttribute("page", page);
			// 跳转到社团活动列表界面
			request.getRequestDispatcher("activity.jsp").forward(request, response);

		}
		else if (lru.equals("costlist")) {// 查询时所有的社团活动，结果集
			System.out.println("cost              ++");
			CostDao costDao = new CostDao();
			String cpagestr = request.getParameter("cpage");
			int cpage = 1;
			if (cpagestr != null) {
				cpage = Integer.parseInt(cpagestr.trim());
			}

			Page page = new Page();
			page.setPageCurrent(cpage);
			List<Cost> costs = costDao.getCostForPage(page);
			request.setAttribute("costs", costs);
			request.setAttribute("page", page);
			// 跳转到社团活动列表界面
			request.getRequestDispatcher("cost_list.jsp").forward(request, response);

		}
		else if (lru.equals("nlist")) {// 查询时所有的社团活动，结果集
			System.out.println("nlist             ++");
			NoticeDao noticeDao = new NoticeDao();
			String cpagestr = request.getParameter("cpage");
			int cpage = 1;
			if (cpagestr != null) {
				cpage = Integer.parseInt(cpagestr.trim());
			}

			Page page = new Page();
			page.setPageCurrent(cpage);
			List<Notice> notices = noticeDao.getNoticeForPage(page);
			request.setAttribute("notices", notices);
			request.setAttribute("page", page);
			// 跳转到社团活动列表界面
			request.getRequestDispatcher("notice.jsp").forward(request, response);

		}
		else if (lru.equals("applylist")) {// 查询时所有的社团活动，结果集
			System.out.println("nlist             ++");
			ApplyDao applyDao = new ApplyDao();
			String cpagestr = request.getParameter("cpage");
			int cpage = 1;
			if (cpagestr != null) {
				cpage = Integer.parseInt(cpagestr.trim());
			}

			Page page = new Page();
			page.setPageCurrent(cpage);
			List<Apply> applys = applyDao.getApplyForPage(page);
			request.setAttribute("applys", applys);
			request.setAttribute("page", page);
			// 跳转到社团活动列表界面
			request.getRequestDispatcher("apply_list.jsp").forward(request, response);

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}