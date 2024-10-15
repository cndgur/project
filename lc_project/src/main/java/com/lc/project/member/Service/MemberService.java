package com.lc.project.member.Service;

import com.lc.project.hotel.model.vo.Room;
import com.lc.project.member.model.vo.Member;

public interface MemberService {
	public abstract Member loginMember(Member m);
	int insertMember(Member m);
	
	public abstract Member searchidMember(Member m);
	
	public abstract Member searchpwdMember(Member m);
<<<<<<< HEAD
	
	public boolean updateMember(Member m);
	
	public abstract Room selectRoom(Member m);
=======
<<<<<<< HEAD
=======
	int updateMember(Member m);
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
}
