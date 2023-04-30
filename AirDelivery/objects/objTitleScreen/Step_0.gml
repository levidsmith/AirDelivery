///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space)) {
	room_goto_next()	
}

if (!audio_is_playing(musTitle)) {
	
	audio_stop_all()
	audio_play_sound(musTitle, 10, true)
}