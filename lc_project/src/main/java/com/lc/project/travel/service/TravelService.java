package com.lc.project.travel.service;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.common.template.Template;
import com.lc.project.travel.model.dao.TravelDao;
import com.lc.project.travel.model.vo.Travel;

public class TravelService {
	private TravelDao tDao = new TravelDao();
	public ArrayList<Travel> selectList(){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectList(conn);
		JDBCTemplate.close(conn);
		return list;
	}
	public Travel selectTravel(String trName) {
		Connection conn = JDBCTemplate.getConnection();
		Travel t = tDao.selectTravel(conn,trName);
		JDBCTemplate.close(conn);
		return t;
	}
	public ArrayList<Travel> locationList(String location) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Travel> list = tDao.selectList(sqlSession, location);
		System.out.println(list);
		sqlSession.close();
		
		return list;
	}
}
