execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[鸡]",color:"red",hover_event:{action:"show_text",value:"队伍玩家每回合多获得5使用点数"}}]

function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon chicken ~ 0 ~ {Team:red,Tags:["tuteng"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon chicken ~ 0 ~ {Team:blue,Tags:["tuteng"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_ji kardCount
