package com.prac.demo.repository;

import java.util.List;

import com.prac.demo.model.Player;

public interface PlayerRepository {

	List<Player> findByTeam(int teamId);
	Player findById(int id);
}
