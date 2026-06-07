function createDialog(messages){
    if instance_exists(oDialog) return;
        
    var inst = instance_create_depth(0,0,0,oDialog)
    inst.message = messages
    inst.currentMsg = 0
}

nameSize = 1
textSize = 0.8
statSize = 0.6

charColor = {
    "You": c_white,
    "Shoppa": c_purple,
    "Kingo": c_gray,
    "Armorer": c_red,
    "Sworder": c_blue
}

buyLife = [
    {
        name: "Shoppa",
        msg: "Chupa chupa",
    },
    {   
        name: "You",
        msg: "Que rico",
    }
]

fullHp = [
    {
        name: "Shoppa",
        msg: "Tiene la vida maxima hermano, no le voy a dejar derrochar plata",
    },
    {   
        name: "You",
        msg: "Repanpanos",
    }
]

buyntLife = [
    {
        name: "Shoppa",
        msg: "Dale mano como me va a pagar",
    },
    {   
        name: "You",
        msg: "Con carne perra",
    },
    {
        name: "Shoppa",
        msg: "Ostia puta que rico, pero no perrita",
    },
    {
        name: "Shoppa",
        msg: "Traeme 5 monedas y ahi si hablamos bitch",
    },
]

moveUrAss = [
    {
        name: "Kingo",
        msg: "Dale mano que hace aca",
    },
    {
        name: "Kingo",
        msg: "No ve que estoy bangueando a su madre",
    },
    {   
        name: "You",
        msg: "Hijo de perra",
    },
    {
        name: "Kingo",
        msg: "Vaya y mate a esos ñeritos antes de que chopee el dih que le voy a dar",
    },
]

giveMission = [
    {
        name: "Kingo",
        msg: "Mano, vaya a matar a esos ñeritos de los goblins",
    },
    {   
        name: "You",
        msg: "por que o que",
    },
    {
        name: "Kingo",
        msg: "Solo haga lo que le digo y su familia sobrevive",
    },
    {
        name: "You",
        msg: "Bueno, pero tmb te acuerdas de darme el dih",
    }, {
        name: "Kingo",
        msg: "Trato",
    },
]

maxArmor = [
    {
        name: "Armorer",
        msg: $"Ya no te puedo mejorar mas la armadura",
    },
    {   
        name: "You",
        msg: "U son of a bitcch",
    },
]

maxSword = [
    {
        name: "Sworder",
        msg: $"Ya no te puedo mejorar mas la espada",
    },
    {   
        name: "You",
        msg: "U son of a bitcch",
    },
]

function updateDialogs(){ 

global.noMoneyArmor = [
    {
        name: "Armorer",
        msg: $"Dame {(oPlayer.defense+1)*5} y  ahi si hablamos",
    },
    {   
        name: "You",
        msg: "mierda",
    },
]
    
global.upgradeArmor = [
    {
        name: "Armorer",
        msg: $"Listo, ahi tiene su armadura de {oPlayer.tier[oPlayer.defense]}",
    },
    {   
        name: "You",
        msg: "vamos",
    },
]
    
global.noMoneySword = [
    {
        name: "Sworder",
        msg: $"Dame {(oPlayer.attack+1)*5} y  ahi si hablamos",
    },
    {   
        name: "You",
        msg: "mierda",
    },
]
    
global.upgradeSword = [
    {
        name: "Sworder",
        msg: $"Listo, ahi tiene su espada de {oPlayer.tier[oPlayer.attack]}",
    },
    {   
        name: "You",
        msg: "vamos",
    },
]
}

