package com.lc.project.map.service;

import org.apache.ibatis.session.SqlSession;

import com.lc.common.JDBCTemplate;
import com.lc.project.common.template.Template;
import com.lc.project.map.dao.MapDao;
import com.lc.project.travel.model.vo.Travel;

public class MapServiceImpl implements MapService{

	private MapDao mDao = new MapDao();
	
	@Override
	public Travel selectTravel(String personnel, String location, String theme) {
		SqlSession sqlSession = Template.getSqlSession();
		Travel tr = mDao.selectTravel(personnel, location, theme);
		
		sqlSession.close();
		return tr;
	}
	
}
