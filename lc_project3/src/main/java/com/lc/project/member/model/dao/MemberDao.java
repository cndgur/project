package com.lc.project.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import com.lc.project.member.model.vo.Member;

public class MemberDao {

    public Member loginMember(SqlSession sqlSession, Member member) {
        return sqlSession.selectOne("memberMapper.loginMember", member);
    }

    public int insertMember(SqlSession sqlSession, Member member) {
        return sqlSession.insert("memberMapper.insertMember", member);
    }
    
    public Member searchidMember(SqlSession sqlSession, Member member) {
    	return sqlSession.selectOne("memberMapper.searchidMember", member);
    }
    
    public Member searchpwdMember(SqlSession sqlSession, Member member) {
    	return sqlSession.selectOne("memberMapper.searchpwdMember", member);
    }
    
    public int updateMember(SqlSession sqlSession, Member member) {
    	return sqlSession.update("memberMapper.updateMember", member);
    }
}
