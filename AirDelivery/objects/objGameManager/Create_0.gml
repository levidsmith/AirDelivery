///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor

i = 8

while (i < 100) {
	instance_create_depth(i * 32, 12 * 32, 2, objHouse)
	
//	i += 5
    i +=  (3 + irandom(2))
}


i = 40
while (i < 100) {
	y_pos = irandom(10) * 32
	instance_create_depth(i * 32, y_pos, 2, objPackageRefill)
	i += 25
}


//i = 10
//while (i < 100) {
//	y_pos = (2 + irandom(8)) * 32
//	instance_create_depth(i * 32, y_pos, 2, objEnemyA)
//    i +=  (7 + irandom(3))
//}

iEnemySpawnCountdown = 30
iSpawnCount = 0


audio_stop_all()
audio_play_sound(musGame, 10, true)

