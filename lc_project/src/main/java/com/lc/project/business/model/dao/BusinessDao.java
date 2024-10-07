package com.lc.project.business.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.business.model.vo.Business;

public class BusinessDao {

	public int insertBusiness(SqlSession sqlSession, Business b) {
		return sqlSession.insert("businessMapper.insertBusiness", b);
	}
}
