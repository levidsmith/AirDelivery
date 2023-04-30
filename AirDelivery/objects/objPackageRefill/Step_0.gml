///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, objAirplane)) {
	objAirplane.iPackages += 10
	if (objAirplane.iPackages > 20) {
		objAirplane.iPackages = 20
	}
	audio_play_sound(sndPackageRefill, 10, false)

	instance_destroy()
}