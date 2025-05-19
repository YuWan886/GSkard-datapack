execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.shenglihaojiao.1",color:"white",hover_event:{action:"show_text","value":"敌方区域怪物获得3s速度4与力量4"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
    #蓝
    execute if entity @s[team=blue] run effect give @e[type=!player,type=!iron_golem,team=blue] speed 3 3 true
    execute if entity @s[team=blue] run effect give @e[type=!player,type=!iron_golem,team=blue] strength 3 3 true
    #红
    execute if entity @s[team=red] run effect give @e[type=!player,type=!iron_golem,team=red] speed 3 3 true
    execute if entity @s[team=red] run effect give @e[type=!player,type=!iron_golem,team=red] strength 3 3 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shenglihaojiao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1