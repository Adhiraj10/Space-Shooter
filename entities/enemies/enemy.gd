class_name Enemy

extends Node2D

var speed:int =  130;

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(randi_range(16, 384), 0);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=speed*delta;
	

func _on_enemy_area_area_entered(area:Node2D):
	if area.name == "BulletArea":
		area.get_parent().queue_free();
		queue_free();
		#print("Bullet hit enemy");
