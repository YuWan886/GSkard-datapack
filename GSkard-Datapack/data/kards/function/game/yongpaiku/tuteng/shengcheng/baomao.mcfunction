execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[豹猫]",color:"red",hover_event:{action:"show_text",value:"队伍玩家获得速度2 回合结束时对敌方1个图腾造成4♥伤害"}}]
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon ocelot ~ 0 ~ {Team:red,Tags:["tuteng"],Age:0,Silent:1b,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f}
execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon ocelot ~ 0 ~ {Team:blue,Tags:["tuteng"],Age:0,Silent:1b,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_baomao kardCount
