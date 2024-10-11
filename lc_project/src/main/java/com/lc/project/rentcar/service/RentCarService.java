package com.lc.project.rentcar.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.Template;
import com.lc.project.rentcar.model.Dao.RentCarDao;
import com.lc.project.rentcar.model.vo.RentCar;
import com.lc.project.travel.model.dao.TravelDao;

public class RentCarService {
	private RentCarDao rDao = new RentCarDao();	
	public ArrayList<RentCar> selectCarList() {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<RentCar> carList = rDao.carList(sqlSession);
		sqlSession.close();
		return carList;
	}
	public int bookingCar(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = rDao.bookingCar(sqlSession, map);
		System.out.println(map);
		sqlSession.close();
		return result;
	}
	public int carStatus(String carNum) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = rDao.carStatus(sqlSession,carNum);
		sqlSession.close();
		return result;
	}
}
