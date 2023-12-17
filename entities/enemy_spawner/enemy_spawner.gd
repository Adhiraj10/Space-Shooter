extends Node
var enemy_scene = preload("res://entities/enemies/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = Timer.new();
	add_child(timer);
	#timer.set_wait_time(2);
	timer.timeout.connect(_create_enemy);
	timer.start(1);

func _create_enemy():
	var enemy = enemy_scene.instantiate();
	get_parent().get_node("Enemies").add_child(enemy);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_boundary_area_entered(area):
	if area.name == "EnemyArea":
		get_tree().paused = true;
