package com.lc.project.map.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.common.JDBCTemplate;
import com.lc.project.common.template.Template;
import com.lc.project.map.dao.MapDao;
import com.lc.project.travel.model.vo.Travel;

public class MapServiceImpl implements MapService{

	private MapDao mDao = new MapDao();
	
	@Override
	public ArrayList<Travel> selectTravelTag(String personnel, String location, String theme) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Travel> trList = mDao.selectTravelTag(sqlSession, personnel, location, theme);
		
		sqlSession.close();
		return trList;
	}
	
}
