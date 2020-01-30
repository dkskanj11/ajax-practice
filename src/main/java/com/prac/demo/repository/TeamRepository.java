package com.prac.demo.repository;

import java.util.List;

import com.prac.demo.model.Team;

public interface TeamRepository {
	List<Team> findAll();
}
