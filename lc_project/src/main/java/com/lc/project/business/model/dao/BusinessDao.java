package com.lc.project.business.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.business.model.vo.Business;

public class BusinessDao {

	public int insertBusiness(SqlSession sqlSession, Business business) {
		return sqlSession.insert("businessMapper.insertBusiness", business);
	}
	
	public Business loginBusiness(SqlSession sqlSession, Business business) {
		return sqlSession.selectOne("businessMapper.loginBusiness", business);
	}
}
