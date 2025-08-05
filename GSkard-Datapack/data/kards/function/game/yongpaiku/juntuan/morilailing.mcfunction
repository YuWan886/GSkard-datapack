execute if entity @s[team=red] at @e[tag=blue_marker_5] run summon creeper ~ 0 ~ {powered:1b,Team:red,Tags:["morilailing"],Passengers:[{id:"item_display",billboard:"vertical",start_interpolation:0,interpolation_duration:40,item:{id:"creeper_head"},Tags:["Mob_Start","morilailing"]}]}
execute if entity @s[team=red] at @e[tag=blue_marker_9] run summon creeper ~ 0 ~ {powered:1b,Team:red,Tags:["morilailing"],Passengers:[{id:"item_display",billboard:"vertical",start_interpolation:0,interpolation_duration:40,item:{id:"creeper_head"},Tags:["Mob_Start","morilailing"]}]}

execute if entity @s[team=blue] at @e[tag=red_marker_5] run summon creeper ~ 0 ~ {powered:1b,Team:blue,Tags:["morilailing"],Passengers:[{id:"item_display",billboard:"vertical",start_interpolation:0,interpolation_duration:40,item:{id:"creeper_head"},Tags:["Mob_Start","morilailing"]}]}
execute if entity @s[team=blue] at @e[tag=red_marker_9] run summon creeper ~ 0 ~ {powered:1b,Team:blue,Tags:["morilailing"],Passengers:[{id:"item_display",billboard:"vertical",start_interpolation:0,interpolation_duration:40,item:{id:"creeper_head"},Tags:["Mob_Start","morilailing"]}]}

execute if entity @s[team=red] run team join red @e[tag=Mob_Start]
execute if entity @s[team=blue] run team join blue @e[tag=Mob_Start]

execute as @e[tag=Mob_Start] run data modify entity @s transformation.translation set value [0,0.5,0]
execute as @e[tag=Mob_Start] run data modify entity @s transformation.translation set value [0,0.5,0]

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_morilailin kardCount
