///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor
iEnemySpawnCountdown -= 1
if (iEnemySpawnCountdown <= 0) {
	
	iSpawnCount += 1
	
	
	if (iSpawnCount < 5) {
		iType = 0
	} else if (iSpawnCount < 10) {
		iType = 1
//		iType = irandom(2)
	} else if (iSpawnCount < 15) {
		iType = 2
	} else {
		iType = irandom(3)
		
	}
	
//	iType = 2
	
	if (iType == 0) {
		y_pos = (2 + irandom(8)) * 32
		instance_create_depth(objCamera.x + 640, y_pos, 2, objEnemyA)
		iEnemySpawnCountdown = 30 * 5
	} else if (iType == 1) {
		y_pos = (2 + irandom(8)) * 32
		instance_create_depth(objCamera.x + 640, y_pos, 2, objEnemyB)
		iEnemySpawnCountdown = 30 * 5
		
	} else if (iType == 2) {
		y_pos = (2 + irandom(8)) * 32
		instance_create_depth(objCamera.x + 640, y_pos, 2, objEnemyC)
		iEnemySpawnCountdown = 30 * 5

	}
}