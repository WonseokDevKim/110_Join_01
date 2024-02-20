package com.feb.join.dao;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberDao {
	// 회원 가입
	public int join(HashMap<String, String> params);
}
