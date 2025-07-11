execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[无形]",color:"dark_gray",hover_event:{action:"show_text",value:"敌方区域怪物隐身5s"}}]
function kards:game/yongpaiku/use_general/kard_general
    execute if entity @s[team=blue] run effect give @e[type=!player,type=!iron_golem,team=blue] invisibility 5 1 true
    execute if entity @s[team=red] run effect give @e[type=!player,type=!iron_golem,team=red] invisibility 5 1 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuxing kardCount
