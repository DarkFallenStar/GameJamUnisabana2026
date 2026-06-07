if (currentMsg < 0) exit;
    
var str = message[currentMsg].msg


if currentChar < string_length(str){
    currentChar += charSpd * (1 + keyboard_check(inputKey))
    drawMsg = string_copy(str,0,currentChar)
}
else if keyboard_check_pressed(inputKey){
    currentMsg++
    if currentMsg >= array_length(message){
        instance_destroy()
    }
    else{
        currentChar = 0
    }
}