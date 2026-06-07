if instance_exists(oDialog) exit 
    
if (oGUI.gobKills >= oGUI.totalGobCount) 
            and (oGUI.gold >= oGUI.totalGoldCount){
                missionComplete = true
            }
    
if distance_to_object(oPlayer) < 20{
    canTalk = true

    if keyboard_check_pressed(inputKey){
        if (missionComplete){
            dialog = (global.Congrats) 
        }
        else{
            if talked{
            dialog = global.moveUrAss
            }
            else{
                dialog = global.giveMission
                talked = true
            }
            
        }
        createDialog(dialog)
    }
}
else{
    canTalk = false
}

