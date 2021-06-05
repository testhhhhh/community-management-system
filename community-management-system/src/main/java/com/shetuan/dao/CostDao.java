package com.shetuan.dao;

import com.shetuan.bean.Activity;
import com.shetuan.bean.Cost;
import com.shetuan.util.Page;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CostDao  extends BaseDao{
    /**
     * 获取活动列表
     *
     * @param page
     *            分页信息
     * @return 社团活动集合
     */
    public List<Cost> getCostForPage(Page page) {
        List<Cost> costs = new ArrayList<Cost>();
        System.out.println("------------------------------------------------");
        try {
            // 获取连接
            getCon();
            // 为page分页，查询总记录数
            String countsql = "SELECT COUNT(1) FROM cost ";
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
            String sql = " select costid,cost.activity_id,activity_detil.activity_name,cost.login_name,member.member_name,money,community.community_name from activity_detil,community,cost,member where activity_detil.activity_id=cost.activity_id and cost.login_name=member.login_name and activity_detil.community_id=community.community_id  limit ?,?";
            // 执行sql ，传入分页的起始页，每页大小
            exeQuery(sql, page.getItemStart(), page.getPageSize());
            // 获取查询结果
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 如果存在结果将其封装为一个新的activity对象，添加到list集合
            while (rs.next()) {
                Cost cost = new Cost();
                cost.setCostId(Integer.parseInt(rs.getString(1)));
                cost.setActivityId(Integer.parseInt(rs.getString(2)));
                cost.setActivityName(rs.getString(3));
                cost.setLoginName(rs.getString(4));
                cost.setMemberName(rs.getString(5));
                cost.setMoney(Double.parseDouble(rs.getString(6)));
                cost.setCommunityName(rs.getString(7));
                // 将新的activity对象添加到activities集合中
                System.out.println(cost);
                costs.add(cost);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            // 关闭所有连接，管道
            closeAll();
        }
        return costs;
    }
    /**
     * 为搜索框，获取所有相关费用
     *
     * @param com
     *            模糊查询的字段
     * @param page
     *            分页信息
     * @return 相关活动结果集合
     */
    public List<Cost> getCostForSearch(String com, Page page) {
        List<Cost> costs = new ArrayList<Cost>();
        try {
            // 获取连接
            getCon();
            // 为page分页，查询总记录数
            String countsql = "SELECT count(1) FROM cost,activity_detil WHERE cost.activity_id=activity_detil.activity_id and activity_name like ?";
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
            String sql = " select costid,cost.activity_id,activity_detil.activity_name,cost.login_name,member.member_name,money,community.community_name from activity_detil,community,cost,member where activity_detil.activity_id=cost.activity_id and cost.login_name=member.login_name and activity_detil.community_id=community.community_id and activity_name like ? ORDER BY community.community_name limit ?,?";

            // 执行sql，并传入参数：模糊字段，查询起始页，每页大小
            exeQuery(sql, "%" + com + "%", page.getItemStart(), page.getPageSize());
            // 获取查询结果
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 如果结果存在，将其封装为新的activity对象，添加到list集合
            while (rs.next()) {
                Cost cost = new Cost();
                cost.setCostId(Integer.parseInt(rs.getString(1)));
                cost.setActivityId(Integer.parseInt(rs.getString(2)));
                cost.setActivityName(rs.getString(3));
                cost.setLoginName(rs.getString(4));
                cost.setMemberName(rs.getString(5));
                cost.setMoney(Double.parseDouble(rs.getString(6)));
                cost.setCommunityName(rs.getString(7));
                // 将新的activity对象添加到activities集合中
                costs.add(cost);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            // 关闭所有连接
            closeAll();
        }
        return costs;
    }

    public int add(Cost cost){
        int temp =0;
        try {
            // 要插入的sql
            getCon();
            String sql = "INSERT INTO cost (costId,login_name,activity_id,money)VALUES(?,?,?,?)";
            // 执行sql 传入相关参数，并获取执行影响行数
            temp = exeUpdate(sql, 0,cost.getLoginName(),cost.getActivityId(),cost.getMoney());
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        finally {
            closeAll();
        }
        return temp;
    }
}
