package com.lc.project.common.template;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.lc.project.common.vo.PageInfo;

public class Template {
	public static SqlSession getSqlSession() {
		//mybatis-config.xml �о�帮��
		
		SqlSession sqlSession = null;
		
		//SqlSession�����ϱ� ���ؼ��� -> SqlSessionFactory��ü �ʿ�
		//SqlSessionFactory�����ϱ����ؼ��� -> SqlSessionFactoryFactoryBuilder�ʿ�
		
		String resource = "/mybatis-config.xml";
		
		try {
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			sqlSession = sqlSessionFactory.openSession(false); // true(�ڵ�Ŀ��), false(����Ŀ��)
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return sqlSession;
	}
	/**
	 * 
	 * @param listCount : �ѰԽñ� ��
	 * @param currentPage : ����������
	 * @param pageLimit : �ϴܿ� ������ ����¡���� ��
	 * @param boardLimit : ���������� ������ �Խñ� �ִ� ��
	 * @return PageInfo
	 */
	public static PageInfo getPageInfo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		int maxPage = (int)Math.ceil((double)listCount / boardLimit); // ���� ������ ������
		int startPage = (currentPage -1) / pageLimit * pageLimit + 1; // ����¡���� ����
		int endPage = startPage + pageLimit -1; //����¡���� ������
		
		endPage = endPage > maxPage ? maxPage : endPage;
		PageInfo pi = new PageInfo(listCount,currentPage,pageLimit,boardLimit,maxPage,startPage,endPage);
		
		return pi;
	}
}
