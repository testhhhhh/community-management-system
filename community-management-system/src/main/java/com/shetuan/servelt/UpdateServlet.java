package com.shetuan.servelt;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shetuan.bean.*;
import com.shetuan.dao.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * 所有的更新servlet
 * @author Administrator
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LoginDao logindao = new LoginDao();
		String ope = request.getParameter("ope");
//		System.out.println("Updateservlet " + ope);

		/**
		 * 修改用户 member update
		 */
		if (ope.equals("mupdate")) {
			String username = request.getParameter("username");
			String userpass = request.getParameter("userpass");
			String uppass2 = request.getParameter("newpass2");

			Login db_login = logindao.getLoginByName(username);

//			System.out.println("loginservlet->update");
			if (db_login == null) {
				request.getRequestDispatcher("manager_update.jsp?rs=namewrong").forward(request, response);
			} else {
				String db_pass = db_login.getLoginPass();
				if (!db_pass.equals(userpass)) {
//					System.out.println("db_pass!=uppass" + db_pass + " " + userpass);
					request.getRequestDispatcher("manager_update.jsp?rs=wrong").forward(request, response);
				} else if(db_pass.equals(userpass)){
					int rs = logindao.updatePassword(username, uppass2);
					if (rs > 0) {
//						System.out.println("rs>0 " + rs);
						response.sendRedirect("manager_update.jsp?rs=success");
					} else {
//						System.out.println("更新失败" + rs);
						request.getRequestDispatcher("manager_update.jsp?rs=fail").forward(request, response);
					}
				}
			}
		}

		/**
		 * 根据登陆名删除用户
		 */
		else if (ope.equals("dele")) {
			String  loginName = request.getParameter("loginname");
			MemberDao memberdao = new MemberDao();
			memberdao.deleteMember(loginName);
			request.getRequestDispatcher("Query?lru=ulist").forward(request, response);
		}

		/**
		 * 修改社团信息
		 */
		else if(ope.equals("cupdate")){
			CommunityDao communitydao = new CommunityDao();
			Community community = new Community();
//			Community olds = new Community();
			MemberDao memberDao = new MemberDao();
			community = communitydao.getCommunityByIdd(Integer.parseInt(request.getParameter("communityId")));
//			System.out.println("获取初始community"+community);
//			System.out.println("--------------他妈进来了吗-----------------------------------------------------------------------------------------");
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
								File oldfile=new File(community.getCommunity_photo());
								if(!community.getCommunity_photo().equals("github.jpg")) {
//									oldfile.delete();
								}
								//5. 调用FileItem的write()方法，写入文件
								File file = new File("E:\\javawebTest\\community-management-system\\src\\main\\webapp\\images\\"+ newFileName);
								File file2 = new File("E:\\javawebTest\\community-management-system\\target\\社团管理系统\\images\\"+ newFileName);
								community.setCommunity_photo(newFileName);

								fileItem.write(file);
								fileItem.write(file2);
								//6. 调用FileItem的delete()方法，删除临时文件
								fileItem.delete();

								/*
								 * 存储到数据库时注意
								 *     1.保存源文件名称   Koala.jpg
								 *  2.保存相对路径      image/1478509873038.jpg
								 *
								 */

							} else {
								community.setCommunity_photo(community.getCommunity_photo());
							}

						}
					}
				}

			} catch (FileUploadException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
//			System.out.println("修改之后的"+community);
			if (community == null) {
				request.getRequestDispatcher("community_update.jsp?rs=namewrong").forward(request, response);
			} else {
					int rs = communitydao.updateCommunity(community);
					if (rs > 0) {

//						System.out.println("rs>0 " + rs);
						request.setAttribute("community",community);
						response.sendRedirect("community_update.jsp?rs=success");
					} else {
//						System.out.println("更新失败" + rs);
						request.getRequestDispatcher("community_update.jsp?rs=fail").forward(request, response);
					}
				}
		}

		/**
		 * 根据社团id删除社团信息
		 */
		else if (ope.equals("cdele")) {
			CommunityDao communityDao = new CommunityDao();
			communityDao.deleteCommunity(Integer.parseInt(request.getParameter("cid")));
			request.getRequestDispatcher("Query?lru=clist").forward(request, response);
		}

		/**
		 * 修改活动信息
		 */
		else if(ope.equals("aupdate")){
//			System.out.println("进入更新了吗");
			ActivityDao activityDao = new ActivityDao();
			Activity activity = new Activity();
			activity.setActivityId(Integer.parseInt(request.getParameter("activityId")));
			activity.setCommunityId(Integer.parseInt(request.getParameter("communityId")));
			activity.setActivityName(request.getParameter("activityName"));
			activity.setCommunityName(request.getParameter("communityName"));
			activity.setActivityDate(request.getParameter("activityDate"));
			activity.setActivityPlace(request.getParameter("activityPlace"));
			activity.setActivityInfo(request.getParameter("content"));
			if (activity == null) {
				request.getRequestDispatcher("activity_update.jsp?rs=namewrong").forward(request, response);
			} else {
				int rs = activityDao.updateActivity(activity);
				if (rs > 0) {
//					System.out.println("rs>0 " + rs);
					request.getSession().setAttribute("activity",activity);
					response.sendRedirect("activity_update.jsp?rs=success");
				} else {
//					System.out.println("更新失败" + rs);
					request.getRequestDispatcher("activity_update.jsp?rs=fail").forward(request, response);
				}
			}
		}


		/**
		 * 根据活动id删除活动信息
		 */
		else if (ope.equals("adele")) {
//			System.out.println("aid"+Integer.parseInt(request.getParameter("aid")));
			ActivityDao activityDao = new ActivityDao();
			activityDao.deleteActivity(Integer.parseInt(request.getParameter("aid")));
			request.getRequestDispatcher("Query?lru=alist").forward(request, response);
		}

		/**
		 * 修改公告信息
		 */
		else if(ope.equals("noticeupdate")){
//			System.out.println("进入更新了吗");
			NoticeDao noticeDao = new NoticeDao();
			Notice notice = new Notice();
			notice.setNoticeId(Integer.parseInt(request.getParameter("noticeId")));
			notice.setNoticeName(request.getParameter("noticeName"));
			notice.setNoticeIntroduction(request.getParameter("noticeIntroduction"));
			notice.setNoticeTime(request.getParameter("noticeTime"));
			notice.setCommunityId(Integer.parseInt(request.getParameter("communityId")));
			notice.setCommunityName(request.getParameter("community_name"));
			if (notice == null) {
				request.getRequestDispatcher("notice_update.jsp?rs=namewrong").forward(request, response);
			} else {
				int rs = noticeDao.updateNotice(notice);
				if (rs > 0) {
//					System.out.println("rs>0 " + rs);
					request.getSession().setAttribute("notice",notice);
					response.sendRedirect("notice_update.jsp?rs=success");
				} else {
//					System.out.println("更新失败" + rs);
					request.getRequestDispatcher("notice_update.jsp?rs=fail").forward(request, response);
				}
			}
		}


		/**
		 * 根据公告id删除公告信息
		 */
		else if (ope.equals("noticedele")) {
//			System.out.println("aid"+Integer.parseInt(request.getParameter("nid")));
			NoticeDao noticeDao = new NoticeDao();
			noticeDao.deleteActivity(Integer.parseInt(request.getParameter("nid")));
			request.getRequestDispatcher("Query?lru=nlist").forward(request, response);
		}


		else if(ope.equals("applyagree")){
//			System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++++++++");
			ApplyDao applyDao = new ApplyDao();
			Apply apply = new Apply();
			apply.setCommunityId(Integer.parseInt(request.getParameter("communityId")));
			apply.setLoginName(request.getParameter("loginname"));
			if (apply == null) {
				request.setAttribute("rs","wrong");
				request.getRequestDispatcher("Query?lru=applylist").forward(request, response);
			} else {
				int rs = applyDao.agree(apply);
				if (rs > 0) {
					request.setAttribute("rs","success");
					request.getRequestDispatcher("Query?lru=applylist").forward(request, response);
				} else {
					request.setAttribute("rs","wrong");
					request.getRequestDispatcher("Query?lru=applylist").forward(request, response);
				}
			}
		}


		/**
		 * 根据公告id删除公告信息
		 */
		else if (ope.equals("applydelete")) {
//			System.out.println("aid"+Integer.parseInt(request.getParameter("nid")));
			ApplyDao applyDao = new ApplyDao();
			int rs = applyDao.delete(request.getParameter("loginname"),Integer.parseInt(request.getParameter("communityId")));
			if(rs>0){
				request.setAttribute("rs","fail");
			}else{
				request.setAttribute("rs","wrong");
			}
			request.getRequestDispatcher("Query?lru=applylist").forward(request, response);
		}

	}

}
