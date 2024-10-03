package com.lc.project.member.Service;

import com.lc.project.member.model.vo.Member;

public interface MemberService {
	public abstract Member loginMember(Member m);
	int insertMember(Member m);
}
