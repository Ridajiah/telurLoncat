extends Area2D
var score = 0 
var coin_found = 0
var total_coin = 0

func _on_coin_body_entered( body ):
	if body.is_in_group("Player2"):
    	self.queue_free()
    	score += 50

func update_score(score) :
	$skor.text = str (score)

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene("World.tscn")