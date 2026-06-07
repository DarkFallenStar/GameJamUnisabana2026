if instance_exists(oDialog) exit
    
if distance_to_object(oPlayer) < 20{
    canTalk = true
    if keyboard_check_pressed(inputKey){
        
        if oGUI.money < (oPlayer.defense+1)*5{
            dialog = global.noMoneyArmor
        }
        else{
            dialog = global.upgradeArmor
            oGUI.money -= (oPlayer.defense+1)*5
            oPlayer.defense += 1
        }
        createDialog(dialog)
    }
}
else{
    canTalk = false
}

