package com.edu.mvc.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.mvc.model.dto.TeamDto;

public class TeamDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	private String NAMESPACE = "team.";

	public List<TeamDto> selectList() {

		return null;
	}

	public TeamDto selectOne(String memberid) {

		return null;
	}

	public int insert(TeamDto dto) {

		return 0;
	}

	public int update(TeamDto dto) {

		return 0;
	}

	public int delete(String memberid) {

		return 0;
	}
	
}
