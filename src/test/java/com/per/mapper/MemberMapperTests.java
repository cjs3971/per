package com.per.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.per.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper membermapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	//회원가입 쿼리 테스트 메서드
	@Test
	public void memberJoin() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setId("admin");			//회원 id
		member.setPassword("admin");			//회원 비밀번호
		member.setName("test");		//회원 이름
		member.setEmail("test");
		member.setMobile("01047083971");                            //회원 메일
		member.setAddress("test");		//회원 우편번호
		
		member.setAdminCk(0);	
		
		membermapper.memberJoin(member);			//쿼리 메서드 실행
		
	}
}
