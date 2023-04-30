///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor
if (vspeed < 4) {
	vspeed += 0.1
}


for (var i = 0; i < instance_number(objHouse); ++i;) {
	house = instance_find(objHouse, i)
	if (place_meeting(x, y, house) && !house.isDelivered) {
			house.sprite_index = sprHouseDelivered
			house.isDelivered = true
			instance_destroy()
			score += 1
			audio_play_sound(sndHouseDelivered, 10, false)
		
	}
}

for (var i = 0; i < instance_number(objEnemyA); ++i;) {
	enemy = instance_find(objEnemyA, i)
	if (place_meeting(x, y, enemy)) {
			instance_destroy(enemy);
			instance_destroy()
			audio_play_sound(sndEnemyHit, 10, false)
		
	}
}

for (var i = 0; i < instance_number(objEnemyB); ++i;) {
	enemy = instance_find(objEnemyB, i)
	if (place_meeting(x, y, enemy)) {
			instance_destroy(enemy);
			instance_destroy()
			audio_play_sound(sndEnemyHit, 10, false)
		
	}
}

for (var i = 0; i < instance_number(objEnemyC); ++i;) {
	enemy = instance_find(objEnemyC, i)
	if (place_meeting(x, y, enemy)) {
			instance_destroy(enemy);
			instance_destroy()
			audio_play_sound(sndEnemyHit, 10, false)
		
	}
}





if (y + 16 > 480 - 32) {
	vspeed = 0;	
}