package com.lc.project.member.Service;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.common.template.Template;
import com.lc.project.hotel.model.vo.Room;
import com.lc.project.member.model.dao.MemberDao;
import com.lc.project.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{

	private MemberDao mDao = new MemberDao();
	
	@Override
	public Member loginMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member loginUser = mDao.loginMember(sqlSession, m);
		
		sqlSession.close();
		
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Member searchidMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member searchid = mDao.searchidMember(sqlSession, m);
		
		sqlSession.close();
		
		return searchid;
	}

	@Override
	public Member searchpwdMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member searchpwd = mDao.searchpwdMember(sqlSession, m);
		
		sqlSession.close();
		
		return searchpwd;
	}

<<<<<<< HEAD
	@Override
	public boolean updateMember(Member m) {
=======
<<<<<<< HEAD
=======
	@Override
	public int updateMember(Member m) {
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.updateMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
<<<<<<< HEAD
		return result > 0;
	}

	@Override
	public Room selectRoom(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		Room room = mDao.selectRoom(conn, m);
		JDBCTemplate.close(conn);		
		return room;
	}

=======
		return result;
	}

>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac


}
