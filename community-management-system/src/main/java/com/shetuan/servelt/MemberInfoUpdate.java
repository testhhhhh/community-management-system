package com.shetuan.servelt;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.shetuan.bean.Member;
import com.shetuan.dao.CommunityDao;
import com.shetuan.dao.MemberDao;

public class MemberInfoUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MemberDao memberdao = new MemberDao();
        try {
            Member member = new Member();
            member.setLoginName(request.getParameter("loginname"));
            member.setMemberName(request.getParameter("username"));
            member.setMemberGender(request.getParameter("gender"));
            member.setMemberAdd(request.getParameter("add"));
            member.setMemberGrade(request.getParameter("grade"));
            member.setMemberInstitute(request.getParameter("institute"));
            member.setMemberEmail(request.getParameter("email"));
            member.setMemberPhone(request.getParameter("phone"));
            CommunityDao communityDao = new CommunityDao();
            member.setIsJoinCommunity(communityDao.getCommunityIdByCName(request.getParameter("jcom")));


            System.out.println("name:" + member.getMemberName());
            System.out.println("phone:" + member.getMemberPhone());


            int result = memberdao.updateMember(member);

            if (result > 0) {
                request.setAttribute("member", member);
                request.getRequestDispatcher("admin/memberInfo.jsp?msg=ok").forward(request, response);
//                request.getRequestDispatcher("/Query?lru=ulist&msg=ok").forward(request, response);

                return;
            } else {
                request.setAttribute("returnURL", "main");
                response.sendRedirect("error.jsp");
                return;
            }
//			}
		/*} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();*/
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
