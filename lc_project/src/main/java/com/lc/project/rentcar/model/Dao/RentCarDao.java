package com.lc.project.rentcar.model.Dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.rentcar.model.vo.RentCar;

public class RentCarDao {
	public ArrayList<RentCar> carList(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("rentcarMapper.carList");
	}

	public int bookingCar(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.insert("rentcarMapper.bookingCar",map);
	}

	public int carStatus(SqlSession sqlSession, String carNum) {
		return sqlSession.update("rentcarMapper.carStatus",carNum);
	}
}
