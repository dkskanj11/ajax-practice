<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="teamList" style="float: left;">
Team <br>
<c:forEach var="team" items="${teams}">
${team.id} ${team.tName} ${team.tYear}<br>
</c:forEach>
</div>

<div style="float: left;">
<br><input type="checkbox" name="checkTeam" onClick="oneCheck(1)"></input><br>
<input type="checkbox" name="checkTeam" onClick="twoCheck(2)"></input><br>
<input type="checkbox" name="checkTeam" onClick="thrCheck(3)"></input><br>
<input type="checkbox" name="checkTeam" onClick="forCheck(4)"></input><br>
</div>


<div id="player" style="padding-left: 30px; float: left;">playerList<div id="test"></div></div>

<div id="playerDe" style="padding-left: 30px; float: left;">playerDetail<div id="test1"></div></div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>
var one_check = 1;
var two_check = 1;
var thr_check = 1;
var for_check = 1;

var onePlayer_check = 1;

function oneCheck(teamId) {
	
	$.ajax({
		url: "/playerList",
		type: "post",
		data: teamId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			console.log(data);
			
			if(one_check === 1) {
				playerList(data);
			
				one_check = 0;
				}else {
					$(".playerList").remove();
					$(".onePlayerDetail").remove();
					one_check = 1;
					}
					
			},
			
		error : function(data) {
			}
		});
};

function twoCheck(teamId) {
	
	$.ajax({
		url: "/playerList",
		type: "post",
		data: teamId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			console.log(data);
			
			if(two_check === 1) {
				twoPlayerList(data);
			
				two_check = 0;
				}else {
					$(".twoPlayerList").remove();
					$(".twoPlayerDetail").remove();
					two_check = 1;
					}
					
			},
			
		error : function(data) {
			}
		});
};

function thrCheck(teamId) {
	
	$.ajax({
		url: "/playerList",
		type: "post",
		data: teamId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			console.log(data);
			
			if(thr_check === 1) {
				thrPlayerList(data);
			
				thr_check = 0;
				}else {
					$(".thrPlayerList").remove();
					$(".thrPlayerDetail").remove();
					thr_check = 1;
					}
					
			},
			
		error : function(data) {
			}
		});
};

function forCheck(teamId) {
	
	$.ajax({
		url: "/playerList",
		type: "post",
		data: teamId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			console.log(data);
			
			if(for_check === 1) {
				forPlayerList(data);
			
				for_check = 0;
				}else {
					$(".forPlayerList").remove();
					$(".forPlayerDetail").remove();
					for_check = 1;
					}
					
			},
			
		error : function(data) {
			}
		});
};

function playerList(data) {
	for(var p of data) {
	   var player_list = "<div class='playerList' style='cursor:pointer;'>"+p.pTeamId+" <a onClick='onePlayerDetail("+p.id+")'>"+p.pName+"</a></div>";
		console.log(player_list);

	   $("#test").after(player_list);
		};

};

function twoPlayerList(data) {
	for(var p of data) {
	   var player_list = "<div class='twoPlayerList' style='cursor:pointer;'>"+p.pTeamId+" <a onClick='twoPlayerDetail("+p.id+")'>"+p.pName+"</a></div>";
		console.log(player_list);

	   $("#test").after(player_list);
		};

};

function thrPlayerList(data) {
	for(var p of data) {
	   var player_list = "<div class='thrPlayerList' style='cursor:pointer;'>"+p.pTeamId+" <a onClick='thrPlayerDetail("+p.id+")'>"+p.pName+"</a></div>";
		console.log(player_list);

	   $("#test").after(player_list);
		};

};

function forPlayerList(data) {
	for(var p of data) {
	   var player_list = "<div class='forPlayerList' style='cursor:pointer;'>"+p.pTeamId+" <a onClick='forPlayerDetail("+p.id+")'>"+p.pName+"</a></div>";
		console.log(player_list);

	   $("#test").after(player_list);
		};

};

function onePlayerDetail(pId) {
	
	$.ajax({
		url: "/playerDetail",
		type: "post",
		data: pId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			
			$(".onePlayerDetail").remove();
			$(".twoPlayerDetail").remove();
			$(".thrPlayerDetail").remove();
			$(".forPlayerDetail").remove();
			
			one_playerDetail(data);
					
			},
			
		error : function(data) {
			}
		});
};

function twoPlayerDetail(pId) {
	
	$.ajax({
		url: "/playerDetail",
		type: "post",
		data: pId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			
			$(".onePlayerDetail").remove();
			$(".twoPlayerDetail").remove();
			$(".thrPlayerDetail").remove();
			$(".forPlayerDetail").remove();
			
			two_playerDetail(data);
					
			},
			
		error : function(data) {
			}
		});
};

function thrPlayerDetail(pId) {
	
	$.ajax({
		url: "/playerDetail",
		type: "post",
		data: pId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			
			$(".onePlayerDetail").remove();
			$(".twoPlayerDetail").remove();
			$(".thrPlayerDetail").remove();
			$(".forPlayerDetail").remove();
			
			thr_playerDetail(data);
					
			},
			
		error : function(data) {
			}
		});
};

function forPlayerDetail(pId) {
	
	$.ajax({
		url: "/playerDetail",
		type: "post",
		data: pId+"",
		dataType: "json",
		contentType: "text/plain",
		success : function(data) {
			
			$(".onePlayerDetail").remove();
			$(".twoPlayerDetail").remove();
			$(".thrPlayerDetail").remove();
			$(".forPlayerDetail").remove();
			
			for_playerDetail(data);
					
			},
			
		error : function(data) {
			}
		});
};

function one_playerDetail(data) {
	   var player_detail = "<div class='onePlayerDetail'>이름 : "+data.pName+"<br>선수번호 : "+data.pNo+"<br>선수팀 : "+data.pTeamId+"<br>나이 : "+data.pAge+"</div>";
		console.log(player_detail);

	   $("#test1").after(player_detail);

};

function two_playerDetail(data) {
	   var player_detail = "<div class='twoPlayerDetail'>이름 : "+data.pName+"<br>선수번호 : "+data.pNo+"<br>선수팀 : "+data.pTeamId+"<br>나이 : "+data.pAge+"</div>";
		console.log(player_detail);

	   $("#test1").after(player_detail);

};

function thr_playerDetail(data) {
	   var player_detail = "<div class='thrPlayerDetail'>이름 : "+data.pName+"<br>선수번호 : "+data.pNo+"<br>선수팀 : "+data.pTeamId+"<br>나이 : "+data.pAge+"</div>";
		console.log(player_detail);

	   $("#test1").after(player_detail);

};

function for_playerDetail(data) {
	   var player_detail = "<div class='forPlayerDetail'>이름 : "+data.pName+"<br>선수번호 : "+data.pNo+"<br>선수팀 : "+data.pTeamId+"<br>나이 : "+data.pAge+"</div>";
		console.log(player_detail);

	   $("#test1").after(player_detail);

};

</script>
</html>