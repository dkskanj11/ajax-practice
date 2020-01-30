package com.prac.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.prac.demo.model.Player;
import com.prac.demo.model.Team;
import com.prac.demo.repository.PlayerRepository;
import com.prac.demo.repository.TeamRepository;

@Controller
public class PlayerController {

	@Autowired
	PlayerRepository pRepo;
	
	@Autowired
	TeamRepository tRepo;
	
	@GetMapping("/")
	public String home(Model model) {
		
		List<Team> teams = tRepo.findAll();
		
		model.addAttribute("teams", teams);
		
		List<Player>  players = pRepo.findByTeam(1);
		
		model.addAttribute("players", players);
		
		return "list";
	}
	
	@PostMapping("/playerList")
	public @ResponseBody List<Player> playerList(@RequestBody String teamId){
		
		int teamId1 = Integer.parseInt(teamId);
		
		List<Player>  players = pRepo.findByTeam(teamId1);
		
		
		return players;
	}
	
	@PostMapping("/playerDetail")
	public @ResponseBody Player playerDetail(@RequestBody String pId) {
		
		int pId1 = Integer.parseInt(pId);
		
		Player player = pRepo.findById(pId1);
		
		return player;
	}
}
