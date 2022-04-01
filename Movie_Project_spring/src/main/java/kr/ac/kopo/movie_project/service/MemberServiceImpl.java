package kr.ac.kopo.movie_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.movie_project.dao.MemberDao;
import kr.ac.kopo.movie_project.model.Member;
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao dao;
	@Override
	public boolean login(Member member) {
		Member item=dao.item(member);
		if(item!=null) {
			member.setId(item.getId());
			member.setPasswd(null);
			member.setGrade(item.getGrade());
			member.setName(item.getName());
			member.setTel(item.getTel());
			return true;
		}
		return false;
	}
	@Override
	public void add(Member member) {
		dao.add(member);
	}
}
