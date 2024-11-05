extends Area2D

@onready var target_sprite = get_parent() 
@onready var score_label = get_parent().get_parent().get_node("Label")
var score = 0

func _ready():
	connect("input_event", Callable(self, "_on_Target_clicked"))

func _on_Target_clicked(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		score += 10
		score_label.text = "Score " + str(score)
		target_sprite.reposicionar() 
