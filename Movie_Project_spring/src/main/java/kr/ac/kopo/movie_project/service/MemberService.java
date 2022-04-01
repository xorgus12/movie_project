package kr.ac.kopo.movie_project.service;

import kr.ac.kopo.movie_project.model.Member;

public interface MemberService {

	boolean login(Member member);

	void add(Member member);

}
