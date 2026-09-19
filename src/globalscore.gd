extends Node

signal score_changed

var scoreT1: int = 0
var scoreT2: int = 0


func add_points(team: int, points: int = 2) -> void:
	if team == 2:
		scoreT2 += points
	else:
		scoreT1 += points
	score_changed.emit()


func reset_score() -> void:
	scoreT1 = 0
	scoreT2 = 0
	score_changed.emit()
