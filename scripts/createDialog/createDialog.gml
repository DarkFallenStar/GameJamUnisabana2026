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
    "Sir William (You)": c_white,
    "Shoppa": c_purple,
    "Kingo": c_red,
    "Armorer": c_blue,
    "Sworder": c_blue
}

buyLife = [
    {
        name: "Shoppa",
        msg: "Take this elixir and keep up with your task, Sir",
    },
    {   
        name: "Sir William (You)",
        msg: "May God bless thee",
    }
]

fullHp = [
    {
        name: "Shoppa",
        msg: "You already strong, Sir. Go and defeat those evil invaders",
    },
    {   
        name: "Sir William (You)",
        msg: "Your honesty is my biggest treasure.",
    }
]

buyntLife = [
    {
        name: "Shoppa",
        msg: "Brave hero, I cannot serve you unless you give me some gylden dough, you know",
    },
    {   
        name: "Sir William (You)",
        msg: "But Sir, I need the Elixir to save our Good Kingdom",
    },
    {
        name: "Shoppa",
        msg: "Pardon me, Sir.",
    },
    {
        name: "Shoppa",
        msg: "5 coins and it will be done.",
    },
]

moveUrAss = [
    {
        name: "Kingo",
        msg: " That mission ain't exactly wrapped up with a bow, see? You ain't sent those fellas to kingdom come just yet.",
    },
    {
        name: "Kingo",
        msg: "Don't you come back, you hear, 'til every last one of those goblins has been sent packing, see?",
    },
    {   
        name: "Sir William (You)",
        msg: "As you wish, your Majesty",
    },
    {
        name: "Kingo",
        msg: "You gotta make your old man and your grandpa proud as a peacock!",
    },
]

giveMission = [
    {
        name: "Kingo",
        msg: "Sir William Marshall Third, carrying a huge name on his shoulders.",
    },
	{
        name: "Kingo",
        msg: "Say, get a load of this! Your grandfather, bless his soul, was the most astonishing knight to ever put shoe to the dusty earth.",
    },
	{ name:"Kingo",
		msg:" Why, your father's time wasn't long ago, not by a long shot, and now I've got an enormous task, a real humdinger, for you to pull off to honor their grand legacy."
	},
	
    {   
        name: "Sir William (You)",
        msg: "Right then, your Majesty, consider it done!",
    },
    {
        name: "Kingo",
        msg: "Them conniving goblins, they're the absolute limit, the whole kit and caboodle of 'em!",
    },
	{
        name: "Kingo",
        msg: "Pilferin' our hard-earned gold, snatchin' up our little rugrats like they was playthings, and scarin' the living daylights outta the dames!",
    },{
        name: "Kingo",
        msg: " The Good Lord himself, he tells us plain as day: \"Exterminate 'em, like a rat in a trap!\" ",
    },
    {
        name: "Sir William (You)",
        msg: "Tthose hoofed horrors, they'll be as extinct as last year's flapper dress",
    }, {
        name: "Kingo",
        msg: "Now scram, you hero! Go on and free us from them pesky invaders.",
    },
]

Congrats = [
    {
        name: "Kingo",
        msg: "You world destroyer! Well done, Son. Humanity rises again as The Good God wishes",
    },
    {   
        name: "Sir William (You)",
        msg: "Those evil demons are gone, but now I embody evilness. May the Lord forgive me.",
    }
]

maxArmor = [
    {
        name: "Armorer",
        msg: $"I have nothing to offer you, Sir",
    },
    {   
        name: "Sir William (You)",
        msg: "You better get working, commoner",
    },
]

maxSword = [
    {
        name: "Sworder",
        msg: $"My best sword is already yours",
    },
    {   
        name: "Sir William (You)",
        msg: "Unlucky me",
    },
]

function updateDialogs(){ 

global.noMoneyArmor = [
    {
        name: "Armorer",
        msg: $"Come back when you own {(oPlayer.defense+1)*5} doubloons",
    },
    {   
        name: "Sir William (You)",
        msg: "Alright, folk",
    },
]
    
global.upgradeArmor = [
    {
        name: "Armorer",
        msg: $"Here's your {oPlayer.tier[oPlayer.defense]} armour",
    },
    {   
        name: "Sir William (You)",
        msg: "Thank ya, mate!",
    },
]
    
global.noMoneySword = [
    {
        name: "Sworder",
        msg: $"{(oPlayer.attack+1)*5} doubloons or no Sword",
    },
    {   
        name: "Sir William (You)",
        msg: "Unlucky me",
    },
]
    
global.upgradeSword = [
    {
        name: "Sworder",
        msg: $"There you go, your new {oPlayer.tier[oPlayer.attack]} Sword",
    },
    {   
        name: "Sir William (You)",
        msg: "Thanks, dear!",
    },
]
}

