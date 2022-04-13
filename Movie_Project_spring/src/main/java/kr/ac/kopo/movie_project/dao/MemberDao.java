package kr.ac.kopo.movie_project.dao;

import kr.ac.kopo.movie_project.model.Member;

public interface MemberDao {

	Member login(Member member);

	void add(Member member);

	int checkId(String id);

}
