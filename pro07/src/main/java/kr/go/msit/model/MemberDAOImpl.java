package kr.go.msit.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.msit.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}	
	
	@Override
	public MemberDTO getMember(String id) throws Exception {
		return sqlSession.selectOne("member.getMember", id);
	}
	
	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		sqlSession.insert("member.memberInsert", dto);
		
	}
	//컨트롤러	 
	@Override public MemberDTO signIn(MemberDTO mdto) throws Exception {
		return sqlSession.selectOne("member.signIn", mdto); 
	}	

}
