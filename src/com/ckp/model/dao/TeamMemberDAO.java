package com.ckp.model.dao;

import java.util.List;

import com.ckp.model.TeamMember;

public interface TeamMemberDAO {
	public TeamMember find(int userId);
	public void save(TeamMember teamMember);
	public void delete(TeamMember teamMember);
	public List<TeamMember> findAll();
	public List<TeamMember> query(String q);
}
