package com.shetuan.servelt;

import com.shetuan.bean.*;
import com.shetuan.dao.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/**
 * 所有的注册servlet
 *
 * @author Administrator
 */
public class UserRegistServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LoginDao logindao = new LoginDao();
        MemberDao memberDao = new MemberDao();
        CommunityDao communitydao = new CommunityDao();
        Object ope = request.getParameter("ope");
//        System.out.println("registServlet" + ope);

        if (ope.equals("manager")) {
            /**
             * LoginRegist
             */
            String username = request.getParameter("username");
            String userpass = request.getParameter("userpass");
            String managerId = request.getParameter("power");
            Login login = new Login();
            login.setLoginName(username);
            login.setLoginPass(userpass);
            login.setManagerId(Integer.parseInt(managerId));
            String judge = logindao.addLogin(login);
            if (judge.equals("success")) {
                request.getRequestDispatcher("admin/manager_add.jsp?rs=success").forward(request, response);
            } else if (judge.equals("exist")) {
                request.getRequestDispatcher("admin/manager_add.jsp?rs=exist").forward(request, response);
            } else {
                request.getRequestDispatcher("admin/manager_add.jsp?rs=fail").forward(request, response);
            }
        }
        else if (ope.equals("index")) {
            /**
             * IndexRegist
             */
            String username = request.getParameter("username");
            String userpass = request.getParameter("userpass");
            String useremail = request.getParameter("email");
            String userphone = request.getParameter("phone");
            Login login = new Login();
            login.setLoginName(username);
            login.setLoginPass(userpass);
            Member member = new Member();
            member.setMemberEmail(useremail);
            member.setMemberPhone(userphone);
            String judge = memberDao.addIndexLogin(login, member);
            if (judge.equals("success")) {
                request.getRequestDispatcher("regist.jsp?rs=success").forward(request, response);
            } else if (judge.equals("exist")) {
                request.getRequestDispatcher("regist.jsp?rs=exist").forward(request, response);
            } else {
                request.getRequestDispatcher("regist.jsp?rs=fail").forward(request, response);
            }

        }
        else if (ope.equals("community")) {
            /**
             * CommunityRegist
             */

            Community community = new Community();
            try {
                if (ServletFileUpload.isMultipartContent(request)) {
                    //1. 创建DiskFileItemFactory对象，设置缓冲区大小和临时文件目录
                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    //System.out.println(System.getProperty("java.io.tmpdir"));//默认临时文件夹

                    //2. 创建ServletFileUpload对象，并设置上传文件的大小限制。
                    ServletFileUpload sfu = new ServletFileUpload(factory);
                    sfu.setSizeMax(10 * 1024 * 1024);//以byte为单位    不能超过10M  1024byte = 1kb  1024kb=1M 1024M = 1G
                    sfu.setHeaderEncoding("utf-8");

                    //3. 调用ServletFileUpload.parseRequest方法解析request对象，得到一个保存了所有上传内容的List对象。
                    List<FileItem> fileItemList = sfu.parseRequest(request);
                    Iterator<FileItem> fileItems = fileItemList.iterator();

                    //4. 遍历list，每迭代一个FileItem对象，调用其isFormField方法判断是否是上传文件
                    while (fileItems.hasNext()) {
                        FileItem fileItem = fileItems.next();
                        //普通表单元素
                        if (fileItem.isFormField()) {

                            String name = fileItem.getFieldName();//name属性值
                            String value = fileItem.getString("utf-8");//name对应的value值
                            if ("communityName".equals(name)) {
                                community.setCommunityName(value);
                            } else if ("createrName".equals(name)) {
                                community.setCommunityCreaterName(value);
                                String createrId = memberDao.getLoginNameByName(value);
                                if (createrId == null) {
                                    request.getRequestDispatcher("admin/community_add.jsp?rs=mNotIn").forward(request, response);
                                    return;
                                }
                                community.setCommunityCreaterId(createrId);
                            } else if ("createDate".equals(name)) {
                                community.setCommunityCreateDate(value);
                            } else if ("communitySum".equals(name)) {
                                community.setCommunityNum(Integer.parseInt(value));
                            } else if ("communityRange".equals(name)) {
                                community.setCommunityRange(value);
                            } else if ("communityClass".equals(name)) {
                                community.setCommunityClassId(Integer.parseInt(value));
                                community.setCommunityClassName(new CommunityClassDao().getClassName(Integer.parseInt(value)));
                            } else if ("communityInfo".equals(name)) {
                                community.setCommunityInfo(value);
                            } else if ("isCreate".equals(name)) {
                                community.setCommunityCreate(Integer.parseInt(value));
                            }
                        }
                        //<input type="file">的上传文件的元素
                        else {
                            String fileName = fileItem.getName();//文件名称
                            if (fileName != null && !"".equals(fileName)) {
//                    	System.out.println("原文件名：" + fileName);//Koala.jpg
//
                                String suffix = fileName.substring(fileName.lastIndexOf('.'));
//                      System.out.println("扩展名：" + suffix);//.jpg
//
                                //新文件名（唯一）
                                String newFileName = UUID.randomUUID().toString() + suffix;
//                      System.out.println("新文件名：" + newFileName);//image\1478509873038.jpg


                                //5. 调用FileItem的write()方法，写入文件
                                File file = new File("E:\\javawebTest\\community-management-system\\src\\main\\webapp\\images\\"+ newFileName);
                                File file2 = new File("E:\\javawebTest\\community-management-system\\target\\社团管理系统\\images\\"+ newFileName);
                                community.setCommunity_photo(newFileName);

                                fileItem.write(file);
                                fileItem.write(file2);


                                //5. 调用FileItem的write()方法，写入文件
//                                File file = new File("E:\\社团管理系统\\community-management-system\\src\\main\\webapp\\images\\"+ newFileName);
//								System.out.println("E:\\社团管理系统\\community-management-system\\src\\main\\webapp\\images\\"+ newFileName);
//                                community.setCommunity_photo(newFileName);

//                                fileItem.write(file);

                                //6. 调用FileItem的delete()方法，删除临时文件
                                fileItem.delete();

                                /*
                                 * 存储到数据库时注意
                                 *     1.保存源文件名称   Koala.jpg
                                 *  2.保存相对路径      image/1478509873038.jpg
                                 *
                                 */
//                      request.setAttribute("image_name",fileName);
//                      request.setAttribute("image_path","image/"+newFileName);
//                      request.getRequestDispatcher("/regist.jsp").forward(request, response);
                            } else {
                                community.setCommunity_photo("github.jpg");
                            }

                        }
                    }
                }

            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }


            /*System.out.println("hahahah");*/
            String judge = communitydao.addAdminCommunity(community);
//			System.out.println("------"+community);
            if (judge.equals("success")) {
//                System.out.println("创建成功");
                request.getRequestDispatcher("admin/community_add.jsp?rs=success").forward(request, response);
            } else if (judge.equals("exist")) {
                request.getRequestDispatcher("admin/community_add.jsp?rs=exist").forward(request, response);
            } else {
                request.getRequestDispatcher("admin/community_add.jsp?rs=fail").forward(request, response);
            }

        }
        else if (ope.equals("activity")) {
            /**
             * ActivityRegist
             */
            CommunityDao communityDao = new CommunityDao();
            String cname = request.getParameter("communityName");
            int cid = communityDao.getCommunityIdByCName(cname);
            if (cid == 0) {
                request.getRequestDispatcher("admin/activity_add.jsp?rs=mNotIn").forward(request, response);
            } else {
                Activity activity = new Activity();
                ActivityDao activityDao = new ActivityDao();
                activity.setActivityName(request.getParameter("activityName"));
                activity.setActivityId(0);
                activity.setCommunityName(cname);
                activity.setCommunityId(cid);
                activity.setActivityDate(request.getParameter("activityDate"));
                activity.setActivityPlace(request.getParameter("activityPlace"));
                activity.setActivityInfo(request.getParameter("content"));
                String judge = activityDao.addAdminActivity(activity);
                if (judge.equals("success")) {
//                    System.out.println("创建成功");
                    request.getRequestDispatcher("admin/activity_add.jsp?rs=success").forward(request, response);
                } else if (judge.equals("exist")) {
                    request.getRequestDispatcher("admin/activity_add.jsp?rs=exist").forward(request, response);
                } else {
                    request.getRequestDispatcher("admin/activity_add.jsp?rs=fail").forward(request, response);
                }
            }
        }
        else if (ope.equals("notice")) {
            /**
             * ActivityRegist
             */
            CommunityDao communityDao = new CommunityDao();
            NoticeDao noticeDao = new NoticeDao();
            String cid = request.getParameter("communityId");
            int result = communityDao.getCommunityById(Integer.parseInt(cid));
            if (result == 0) {
                request.getRequestDispatcher("admin/notice_add.jsp?rs=mNotIn").forward(request, response);
            } else {
                Notice notice = new Notice();
                notice.setNoticeId(0);
                notice.setNoticeName(request.getParameter("noticeName"));
                notice.setNoticeIntroduction(request.getParameter("content"));
                notice.setNoticeTime(request.getParameter("noticeTime"));
                notice.setCommunityId(Integer.parseInt(request.getParameter("communityId")));
//				notice.setCommunityName(request.getParameter("community_name"));
                String judge = noticeDao.addAdminNotice(notice);
                System.out.println(notice);
                if (judge.equals("success")) {
//                    System.out.println("创建成功");
                    request.getRequestDispatcher("admin/notice_add.jsp?rs=success").forward(request, response);
                } else if (judge.equals("exist")) {
                    request.getRequestDispatcher("admin/notice_add.jsp?rs=exist").forward(request, response);
                } else {
                    request.getRequestDispatcher("admin/notice_add.jsp?rs=fail").forward(request, response);
                }
            }
        }
        else if (ope.equals("apply")) {
            /**
             *ApplyRegist
             */
            CommunityDao communityDao = new CommunityDao();
            NoticeDao noticeDao = new NoticeDao();
            ApplyDao applyDao = new ApplyDao();
            String cid = request.getParameter("cid");
            String loginName=request.getParameter("loginName");
            Apply apply = new Apply();
            apply.setLoginName(loginName);
            apply.setCommunityId(Integer.parseInt(cid));
            int result = applyDao.add(apply);
            response.sendRedirect("Query?lru=clist");
        }


    }

}
