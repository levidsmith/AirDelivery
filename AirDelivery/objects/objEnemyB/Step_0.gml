///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor

iLifeTime += 1

x = x_orig + cos(iLifeTime / 60) * (iAmplitude * 32)
y = y_orig + sin(iLifeTime / 60) * (iAmplitude * 32)



if (place_meeting(x, y, objAirplane) && (objAirplane.iInvincibleDelay <= 0)){
	audio_play_sound(sndAirplaneHit, 10, false)

	objAirplane.iHealth -= 1
	objAirplane.iInvincibleDelay = 3 * 30
	//room_goto(RoomGameOver)	
}