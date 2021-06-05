package com.shetuan.dao;

import com.shetuan.util.DruidUtil;

import java.sql.*;

/**
 * 所有dao的父类
 *
 * @author Administrator
 */
public class BaseDao {

	protected Connection connection;

	protected Statement statement;

	protected PreparedStatement ps;

	protected ResultSet rs;

	/**
	 * 获取连接
	 *
	 * @return connection
	 * @throws SQLException
	 */
	public Connection getCon() throws SQLException {
		// ͨ使用Druid连接池获取连接
		connection =  DruidUtil.getConnection();
		return connection;
	}

	/**
	 * 执行更新操作，
	 *
	 * @param sql
	 *            要执行的sql
	 * @param objects
	 *            传入零个或多个参数
	 * @return
	 */
	protected int exeUpdate(String sql, Object... objects) {
		int result = 0;
		try {
			ps = connection.prepareStatement(sql);
			// 如果传入的参数不为空，遍历，添加参数
			if (objects != null && objects.length > 0) {
				for (int i = 0; i < objects.length; i++) {
					ps.setObject(i + 1, objects[i]);
				}
			}
			result = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 执行查询操作
	 *
	 * @param sql
	 *            要执行的sql
	 * @param objects
	 *            传入零个或多个参数
	 */
	protected void exeQuery(String sql, Object... objects) {
		try {
			ps = connection.prepareStatement(sql);
			// 如果传入的参数不为空，遍历，添加参数
			if (objects != null && objects.length > 0) {
				for (int i = 0; i < objects.length; i++) {
					ps.setObject(i + 1, objects[i]);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 关闭所有连接 ResultSet PreparedStatement statement connection
	 */
	public void closeAll() {
		DruidUtil.close(rs,statement,connection);
	}
}
