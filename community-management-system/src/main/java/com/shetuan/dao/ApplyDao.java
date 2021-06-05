package com.shetuan.dao;

import com.shetuan.bean.Apply;
import com.shetuan.bean.Community;
import com.shetuan.bean.Cost;
import com.shetuan.util.Page;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ApplyDao extends BaseDao {
    /**
     * 获取申请列表
     *
     * @param page
     *            分页信息
     * @return 申请集合
     */
    public List<Apply> getApplyForPage(Page page) {
        List<Apply> applys = new ArrayList<Apply>();
        System.out.println("------------------------------------------------");
        try {
            // 获取连接
            getCon();
            // 为page分页，查询总记录数
            String countsql = "SELECT COUNT(1) FROM apply ";
            // 执行sql
            exeQuery(countsql);
            ResultSet countResultSet = (ResultSet) ps.executeQuery();
            // 如果查询结果存在，将其赋值给itemCont
            if (countResultSet.next()) {
                int count = countResultSet.getInt(1);
                page.setItemCont(count);
            }
            // 分页查询活动的详细信息
//            String sql = "SELECT * FROM cost limit ?,?";
            String sql = " select loginname,member_name,member_gender,member_grade,member_institute,community_name,communityId,applyId from apply,community,member where apply.loginname=member.login_name and apply.communityid=community.community_id and communityid>0 limit ?,?";
            // 执行sql ，传入分页的起始页，每页大小
            exeQuery(sql, page.getItemStart(), page.getPageSize());
            // 获取查询结果
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 如果存在结果将其封装为一个新的activity对象，添加到list集合
            while (rs.next()) {
                Apply apply = new Apply();
                apply.setLoginName(rs.getString(1));
                apply.setMember_name(rs.getString(2));
                apply.setMember_gender(rs.getString(3));
                apply.setMember_grade(rs.getString(4));
                apply.setMember_institute(rs.getString(5));
                apply.setCommunity_name(rs.getString(6));
                apply.setCommunityId(Integer.parseInt(rs.getString(7)));
                // 将新的activity对象添加到activities集合中
                System.out.println(apply);
                applys.add(apply);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            // 关闭所有连接，管道
            closeAll();
        }
        return applys;
    }
    public int delete(String loginName,int communityId) {
        int result = 0;
        try {
            //获取连接
            getCon();
            //要执行的删除SQL
            String sql = "delete from apply where communityId=? and loginname=?";
            //执行SQL传入参数，并获取受影响行数
            result = exeUpdate(sql, communityId,loginName );
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            //关闭所有连接
            closeAll();
        }
        return result;
    }
    public int agree(Apply apply) {
            int result = 0;
            try {
                //获取连接
                getCon();

                //要执行的更新SQL
                String sql = "update member set join_communityId=? where login_name=?";
                //执行SQL传入参数，并获取手影响行数
                result = exeUpdate(sql,
                        new Object[] { apply.getCommunityId(),apply.getLoginName()});

                result =delete(apply.getLoginName(),apply.getCommunityId());
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } finally {
                //关闭所有连接
                closeAll();
            }
            return result;
        }
    public int add(Apply apply) {
        int result = 0;
        try {
            //获取连接
            getCon();

            //要执行的更新SQL
            String sql = "insert into apply(loginName,communityId) values(?,?);";
            //执行SQL传入参数，并获取手影响行数
            result = exeUpdate(sql,
                    new Object[] { apply.getLoginName(),apply.getCommunityId()});

//            result =delete(apply.getLoginName(),apply.getCommunityId());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            //关闭所有连接
            closeAll();
        }
        return result;
    }
}
