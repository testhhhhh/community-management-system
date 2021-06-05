package com.shetuan.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CommunityClassDao extends BaseDao{
    public String getClassName(int classId) {
        String className = null;
        try {
            // 获取连接
            getCon();
            // 要执行的sql
            String sql = "select class_name from communityclass where class_id=?";
            // 执行查询，传入参数：登录名
            exeQuery(sql, classId);
            // 获取结果集
            ResultSet rs = (ResultSet) ps.executeQuery();
            // 如果结果集存在，获取login_pass字段
            if (rs.next()) {
                className = rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 关闭所有连接
        closeAll();
        return className;

    }

}
