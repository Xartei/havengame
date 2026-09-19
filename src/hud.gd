extends Label


func _ready() -> void:
	Globalscore.score_changed.connect(_refresh)
	_refresh()


func _refresh() -> void:
	text = "T1  %d   :   %d  T2" % [Globalscore.scoreT1, Globalscore.scoreT2]
