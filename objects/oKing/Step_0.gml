if instance_exists(oDialog) exit
    
if distance_to_object(oPlayer) < 20{
    canTalk = true

    if keyboard_check_pressed(inputKey){
        if talked{
            dialog = global.moveUrAss
        }
        else{
            dialog = global.giveMission
            talked = true
        }
        createDialog(dialog)
    }
}
else{
    canTalk = false
}

