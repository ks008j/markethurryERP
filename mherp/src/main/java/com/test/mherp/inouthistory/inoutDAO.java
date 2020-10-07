package com.test.mherp.inouthistory;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class inoutDAO implements IinoutDAO{
	
	
	 @Autowired 
	 private SqlSessionTemplate template;


	@Override
	public List<inoutDTO> inoutlist() {
		
		
		// Mapped Statements collection does not contain value for inout.list
		// 매핑된 Statements collection중에 list라는 값이 없답니다용
		
		/*
		 
		 # 문제점
		 
 		 1. inout 값들 중에 selectlist가 아니라 list라고 써놓은 것 -> 이름이 틀림
		 2. 1번을 바꿔도 같은 문제 발생해서 찾아보니까 root-context.xml에서 26~30라인을 보세요
		 
	 	<bean id="sessionfactory" class="org.mybatis.spring.SqlSessionFactoryBean">
	 	
		 	<property name="dataSource" ref="log4j"></property> 
		 	-> 의존주입을 담당하는 부분
		 	
		 	<property name="mapperLocations" value="classpath*:com/test/mherp/mapper/*.xml"></property>
		 	-> MyBatis는 XML로 Query를 매핑해서 사용, 그 매핑된 XML의 주소를 지정하는 곳이 이 부분의 value!
		 	-> value="classpath*:com/test/mherp/mapper/*.xml" 
		 	-> com/test/mherp/mapper 패키지의 모든 .xml 파일이 매핑된 대상!
		 	-> 그런데 패키지를 보면 com.test.mherp.inouthistory.mapper 라고 되어있어서 xml을 매핑하는 곳을 찾지 못함
		 	-> com/test/mherp/mapper로 파일 옮겼더니 실행되면서 ORACLE 에러남 에러 고치세요 화이팅~!
		 	
		 	<property name="configLocation" value="WEB-INF/mybatis.xml"></property>
		</bean>
		 
		 
		 
		*/
		
		//return template.selectList("inout.list");
		return template.selectList("inout.selectlist");
	}


	@Override
	public int add(inoutDTO dto) {
	
		return template.insert("inout.add",dto);
	}


	@Override
	public inoutDTO get(String seq) {
		
		return template.selectOne("inout.get",seq);
	}


	@Override
	public List<inoutDTO> clist() {
		
		return template.selectList("inout.clist");
	}


	@Override
	public int edit(inoutDTO dto) {
	
		return template.update("inout.edit",dto);
	}


	@Override
	public int delete(String seq) {
		
		return template.delete("inout.delete",seq);
	}
	
}
