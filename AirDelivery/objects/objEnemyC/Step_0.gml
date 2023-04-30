///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(objAirplane) < 4 * 32) {
	move_towards_point(objAirplane.x, objAirplane.y, 0.5)
} else {
	speed = 0
}


if (place_meeting(x, y, objAirplane) && (objAirplane.iInvincibleDelay <= 0)){
	//room_goto_next()
	audio_play_sound(sndAirplaneHit, 10, false)

	objAirplane.iHealth -= 1
	objAirplane.iInvincibleDelay = 3 * 30	
	
	//room_goto(RoomGameOver)
}