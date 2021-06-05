package com.shetuan.dao;

import com.shetuan.bean.Activity;
import com.shetuan.bean.Notice;
import com.shetuan.util.Page;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NoticeDao extends BaseDao {
    /**
     * 获取公告列表
     *
     * @param page
     *            分页信息
     * @return 公告集合
     */
    public List<Notice> getNoticeForPage(Page page) {
        List<Notice> notices = new ArrayList<Notice>();

        try {
            // 获取连接
            getCon();
            // 为page分页，查询总记录数
            String countsql = "SELECT COUNT(1) FROM notice ";
            // 执行sql
            exeQuery(countsql);
            ResultSet countResultSet = (ResultSet) ps.executeQuery();
            // 如果查询结果存在，将其赋值给itemCont
            if (countResultSet.next()) {
                int count = countResultSet.getInt(1);
                page.setItemCont(count);
            }
            // 分页查询活动的详细信息
            String sql = "SELECT noticeId,noticeName,noticeIntroduction,noticeTime,communityId,community_name FROM community,notice where community.community_id=notice.communityId limit ?,?";
            // 执行sql ，传入分页的起始页，每页大小
            exeQuery(sql, page.getItemStart(), page.getPageSize());
            // 获取查询结果
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 如果存在结果将其封装为一个新的activity对象，添加到list集合
            while (rs.next()) {
                Notice notice = new Notice();
                notice.setNoticeId(rs.getInt("noticeId"));
                notice.setNoticeName(rs.getString("noticeName"));
                notice.setNoticeIntroduction(rs.getString("noticeIntroduction"));
                notice.setNoticeTime(rs.getString("noticeTime"));
                notice.setCommunityId(rs.getInt("communityId"));
                notice.setCommunityName(rs.getString("community_name"));
                // 将新的activity对象添加到activities集合中
                notices.add(notice);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            // 关闭所有连接，管道
            closeAll();
        }
        return notices;
    }
    /**
     * 为搜索框，获取所有相关公告
     *
     * @param com
     *            模糊查询的字段
     * @param page
     *            分页信息
     * @return 相关活动结果集合
     */
    public List<Notice> getNoticeForSearch(String com, Page page) {
        List<Notice> notices = new ArrayList<Notice>();
        try {
            // 获取连接
            getCon();
            // 为page分页，查询总记录数
            String countsql = "SELECT COUNT(1) FROM notice WHERE  noticeName like ?";
            // 执行sql，并传入参数：模糊字段
            exeQuery(countsql, "%" + com + "%");
            // 获取查询结果
            ResultSet countResultSet = (ResultSet) ps.executeQuery();
            // 如果结果存在,将其赋值给itemCont
            if (countResultSet.next()) {
                int count = countResultSet.getInt(1);
                page.setItemCont(count);
            }
            // 要查询的活动详细信息
            String sql = "SELECT noticeId,noticeName,noticeIntroduction,noticeTime,communityId,community_name FROM community,notice where community.community_id=notice.communityId and noticeName like ? ORDER BY communityId limit ?,?";
            // 执行sql，并传入参数：模糊字段，查询起始页，每页大小
            exeQuery(sql, "%" + com + "%", page.getItemStart(), page.getPageSize());
            // 获取查询结果
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 如果结果存在，将其封装为新的notice对象，添加到list集合
            while (rs.next()) {
                Notice notice = new Notice();
                notice.setNoticeId(rs.getInt("noticeId"));
                notice.setNoticeName(rs.getString("noticeName"));
                notice.setNoticeIntroduction(rs.getString("noticeIntroduction"));
                notice.setNoticeTime(rs.getString("noticeTime"));
                notice.setCommunityId(rs.getInt("communityId"));
                notice.setCommunityName(rs.getString("community_name"));
                // 将新的activity对象添加到activities集合中
                notices.add(notice);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            // 关闭所有连接
            closeAll();
        }
        return notices;
    }

    /**
     * 修改公告信息
     * @param notice
     * @return
     */
    public int updateNotice(Notice notice) {
        int result = 0;
        try {
            //获取连接
            getCon();

            //要执行的更新SQL
            String sql = "update notice set noticeName=?,noticeIntroduction=?,noticeTime=?,communityId=? where noticeId=?";
            //执行SQL传入参数，并获取手影响行数
            result = exeUpdate(sql,
                    new Object[] { notice.getNoticeName(),notice.getNoticeIntroduction(),notice.getNoticeTime(),notice.getCommunityId(),notice.getNoticeId()});
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            //关闭所有连接
            closeAll();
        }
        return result;
    }

    /**
     * 根据id删除公告
     * @param noticeId
     * @return
     */
    public int deleteActivity(int  noticeId) {
        int result = 0;
        try {
            //获取连接
            getCon();
            //要执行的删除SQL
            String sql3 = "delete from notice where noticeId=?";
            //执行SQL传入参数，并获取受影响行数
            result = exeUpdate(sql3, noticeId );
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            //关闭所有连接
            closeAll();
        }
        return result;
    }

    /**
     * 管理员添加公告
     *
     * @param notice
     * @return
     */
    public String addAdminNotice(Notice notice) {
        String judge = null;
        try {
            // 要插入的sql
            getCon();
            String sql = "INSERT INTO notice (noticeId,noticeName,noticeIntroduction,noticeTime,communityId)VALUES(?,?,?,?,?)";
            // 执行sql 传入相关参数，并获取执行影响行数
            int temp = exeUpdate(sql, notice.getNoticeId(),notice.getNoticeName(),notice.getNoticeIntroduction(),notice.getNoticeTime(),notice.getCommunityId());
            if (temp > 0) {// 执行成功
                judge = "success";
            } else {// 执行失败
                judge = "fail";
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        finally {
            closeAll();
        }
        return judge;
    }

    /**
     * 根据公告id获取公告详细信息
     *
     * @param noticeId
     * @return
     */
    public Notice getNoticeById(int noticeId) {
        Notice notice = new Notice();
        try {
            // 获取连接
            getCon();
            // 要执行的sql语句
            String sql = "SELECT noticeId,noticeName,noticeIntroduction,noticeTime,communityId,community_name FROM community,notice where community.community_id=notice.communityId and noticeid=?";
            // 执行sql，并传入参数：id
            exeQuery(sql, noticeId);
            // 获取执行结果
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 如果结果存在，将其封装为新的activity对象
            if (rs.next()) {
                /*
                 * 获取结果中的每一个字段
                 */
                notice.setNoticeId(rs.getInt("noticeId"));
                notice.setNoticeName(rs.getString("noticeName"));
                notice.setNoticeIntroduction(rs.getString("noticeIntroduction"));
                notice.setNoticeTime(rs.getString("noticeTime"));
                notice.setCommunityId(rs.getInt("communityId"));
                notice.setCommunityName(rs.getString("community_name"));
                System.out.println(notice);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            // 关闭所有连接
            closeAll();
        }
        return notice;
    }

    /**
     * 根据公告名获取公告id
     *
     * @param name
     * @return
     */
    public int getCommunityIdByCName(String name) {
        int noticeid = 0;
        try {
            // 如果当前连接为空，则创建新的连接，否则使用当前连接
            if (connection == null) {
                getCon();
            }
            // 要执行sql
            String sql = "select noticeid from notice where noticename=?";
            // 执行sql。传入参数：社团名称
            exeQuery(sql, name);
            // 获取查询结果
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 若果结果存在，获取 community_id 值
            if (rs.next()) {
                noticeid = rs.getInt("noticeid");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            closeAll();
        }
        return noticeid;
    }

}
