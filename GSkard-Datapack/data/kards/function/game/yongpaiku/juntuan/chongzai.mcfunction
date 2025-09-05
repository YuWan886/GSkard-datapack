function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[type=#kards:mob,team=red,tag=!tuteng] run summon endermite ~ ~ ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}],Tags:["Mob_Start"]}

execute if entity @s[team=blue] at @e[type=#kards:mob,team=blue,tag=!tuteng] run summon endermite ~ ~ ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}],Tags:["Mob_Start"]}

execute store result score #system temp if entity @e[tag=Mob_Start]
execute if score #system temp matches 21.. run tag @e[tag=Mob_Start] remove Mob_Start
tp @e[tag=Mob_Start] 0.0 0.0 0.0
kill @e[tag=Mob_Start]

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chongzai kardCount


