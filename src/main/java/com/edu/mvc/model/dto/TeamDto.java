package com.edu.mvc.model.dto;

public class TeamDto {
	private int teamseq;
	private String memberid;
	private int individual;
	private String teamname;
	private int leader;
	
	public TeamDto() {
		super();
	}

	public TeamDto(int teamseq, String memberid, int individual, String teamname, int leader) {
		super();
		this.teamseq = teamseq;
		this.memberid = memberid;
		this.individual = individual;
		this.teamname = teamname;
		this.leader = leader;
	}

	public int getteamseq() {
		return teamseq;
	}

	public void setteamseq(int teamseq) {
		this.teamseq = teamseq;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getIndividual() {
		return individual;
	}

	public void setIndividual(int individual) {
		this.individual = individual;
	}

	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}

	public int getLeader() {
		return leader;
	}

	public void setLeader(int leader) {
		this.leader = leader;
	}

	@Override
	public String toString() {
		return "TeamDto [teamseq=" + teamseq + ", memberid=" + memberid + ", individual=" + individual + ", teamname="
				+ teamname + ", leader=" + leader + "]";
	}
}
