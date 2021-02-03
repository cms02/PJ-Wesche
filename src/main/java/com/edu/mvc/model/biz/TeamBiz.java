package com.edu.mvc.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.edu.mvc.model.dao.TeamDao;
import com.edu.mvc.model.dto.TeamDto;

public class TeamBiz {

	@Autowired
	private TeamDao dao;
	
	public List<TeamDto> selectList() {

		return null;
	}

	public TeamDto selectOne() {
		
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
