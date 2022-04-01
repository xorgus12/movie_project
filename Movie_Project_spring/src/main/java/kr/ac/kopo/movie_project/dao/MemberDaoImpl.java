package kr.ac.kopo.movie_project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.movie_project.model.Member;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	SqlSession sql;

	@Override
	public Member item(Member member) {
		return sql.selectOne("partner.login", member);
	}

	@Override
	public void add(Member member) {
		sql.insert("partner.add", member);		

	}

}
