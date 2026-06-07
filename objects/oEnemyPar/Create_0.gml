alert = false
path = path_add()
pathDelay = 30
pathTimer = irandom(60)
kbx = 0
kby = 0
colTiles = [oSolid, oHouse]

enum states{
    IDLE,
    MOVE,
    ATTACK,
    DEAD,
}
state = states.IDLE

canAttack = true