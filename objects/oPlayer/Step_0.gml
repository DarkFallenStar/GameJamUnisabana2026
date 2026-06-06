//Inputs
keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyDown = keyboard_check(ord("S"))
keyUp = keyboard_check(ord("W"))
clickPress = mouse_check_button_pressed(mb_left)
keySprint = keyboard_check(vk_shift)

//Movement calc
if keySprint{
    speedLimit = 10
}
else{
    speedLimit = 6
}

hMoveDir = keyRight-keyLeft
vMoveDir = keyDown-keyUp

xSpeed += hMoveDir * accel
ySpeed += vMoveDir * accel

xSpeed = clamp(xSpeed, -speedLimit, speedLimit)
ySpeed = clamp(ySpeed, -speedLimit, speedLimit)


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


if clickPress{
    instance_create_depth(x,y,1,oAttack)
}