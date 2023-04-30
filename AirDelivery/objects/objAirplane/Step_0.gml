///2023 Levi D. Smith

/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_down)) {
  vspeed = 2	
}  else if (keyboard_check_pressed(vk_up)) {
  vspeed = -2
} else if (keyboard_check_released(vk_down) || keyboard_check_released(vk_up)) {
	vspeed = 0
}


if (keyboard_check_pressed(vk_left)) {
  hspeed = -2	
}  else if (keyboard_check_pressed(vk_right)) {
  hspeed = 2
} else if (keyboard_check_released(vk_left) || keyboard_check_released(vk_right)) {
	hspeed = 0.5
}



x_margin = 16

if (x < objCamera.x + x_margin) {
	x = objCamera.x	+ x_margin
} else if (x + 32 > objCamera.x + 640 - x_margin) {
	x = objCamera.x + 640 - x_margin - 32	
}

if (y > (11 * 32) - 16) {
  y = (11 * 32) - 16
  vspeed = 0
} else if (y < 16) {
	y = 16
	vspeed = 0
}


if (keyboard_check_pressed(vk_space) && iPackages > 0) {
	//instance_create_layer(x, y + 16, 0, objPackage)
	instance_create_depth(x, y, 1, objPackage)
	iPackages -= 1
}

if (place_meeting(x, y, objFinishLine)) {
	room_goto(RoomLevelComplete)	
}

if (iHealth <= 0) {
	room_goto(RoomGameOver)	
}

if (iInvincibleDelay > 0) {
	image_alpha = 0.5
	iInvincibleDelay -= 1
	
	if (iInvincibleDelay == 0) {
		image_alpha = 1	
	}
}