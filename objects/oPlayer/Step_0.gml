if instance_exists(oDialog) exit

//Inputs
keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyDown = keyboard_check(ord("S"))
keyUp = keyboard_check(ord("W"))
atkUp = keyboard_check_pressed(vk_up)
atkDown = keyboard_check_pressed(vk_down)
atkLeft = keyboard_check_pressed(vk_left)
atkRight = keyboard_check_pressed(vk_right)
atkPress = keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) 
    or keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right)
clickPress = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space)
keySprint = keyboard_check(vk_shift)

//Movement calc
if keySprint{
    speedLimit = 3
}
else{
    speedLimit = 2
}

hMoveDir = keyRight-keyLeft
vMoveDir = keyDown-keyUp

xSpeed += hMoveDir * accel
ySpeed += vMoveDir * accel

xSpeed = clamp(xSpeed, -speedLimit, speedLimit)
ySpeed = clamp(ySpeed, -speedLimit, speedLimit)

if hMoveDir != 0 or vMoveDir != 0{
    facing = point_direction(0,0, hMoveDir, vMoveDir)
}

if sign(vMoveDir){
    
}


//Horizontal Collisions
if (place_meeting(x+xSpeed, y, colTiles)) {
    while(!place_meeting(x+sign(xSpeed), y, colTiles)) {
        x += sign(xSpeed);
    }
    xSpeed = 0
}
x += xSpeed

//Vertical Collisions
if (place_meeting(x, y+ySpeed, colTiles)) {
    while(!place_meeting(x, y+sign(ySpeed), colTiles)) {
        y += sign(ySpeed);
    }
    ySpeed = 0 
}
y += ySpeed

//Friction
 var ht = xSpeed;
 if xSpeed != 0 {
     xSpeed -= sign(xSpeed) * deaccel;
     if sign(ht) != sign(xSpeed) {
     xSpeed = 0;
     }
 }
 var vt = ySpeed;
 if ySpeed != 0 {
     ySpeed -= sign(ySpeed) * deaccel;
     if sign(vt) != sign(ySpeed) {
     ySpeed = 0;
     }
 }


/*if clickPress{
    var atkInst = instance_create_depth(x,y,1,oAttack)
    atkInst.image_angle = facing
}*/
if atkPress{ 
    if !instance_exists(oAttack) and (alarm[0] < 0){
        alarm[0] = 30
        atkInst = instance_create_depth(x,y,1,oAttack)
        
        if atkUp{
           atkInst.image_angle = 90
        }
        if atkDown{
            atkInst.image_angle = 270
        }
        if atkLeft{
            atkInst.image_angle = 180
        }
        if atkRight{
            atkInst.image_angle = 0
        }
    }
}

if (hMoveDir != 0) or (vMoveDir !=0){
    if (hMoveDir > 0) sprite_index = sPlayerRightMove
    else if (hMoveDir < 0) sprite_index = sPlayerLeftMove
    else if (vMoveDir > 0) sprite_index = sPlayerDownMove
    else if (vMoveDir < 0) sprite_index = sPlayerUpMove
}
else{
    if (sprite_index = sPlayerRightMove) sprite_index = sPlayerRight
    else if (sprite_index = sPlayerLeftMove) sprite_index = sPlayerLeft
    else if (sprite_index = sPlayerDownMove) sprite_index = sPlayerDown
    else if (sprite_index = sPlayerUpMove) sprite_index = sPlayerUp
}

if hp < 0{
    instance_destroy()
}

switch (defense) {
    case 1:
        break
    	
    case 2:
        break	
    
    case 3:
        break	
}