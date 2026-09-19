extends Area2D

@export var team: int = 1
@export var points: int = 2

var _armed := true


func _ready() -> void:
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)


func _on_body_entered(body: Node2D) -> void:
	if not _armed or not body.is_in_group("ball"):
		return
	var rigid := body as RigidBody2D
	if rigid == null:
		return
	if rigid.linear_velocity.y <= 0.0:
		return
	_armed = false
	Globalscore.add_points(team, points)


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("ball"):
		_armed = true
