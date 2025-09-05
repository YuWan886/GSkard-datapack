function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=blue_marker_5] run summon guardian ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=red] unless score 回合数 GameRound matches 15.. at @e[tag=blue_marker_7] run summon guardian ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=red] if score 回合数 GameRound matches 15.. at @e[tag=blue_marker_7] run summon elder_guardian ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_9] run summon guardian ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}]}

execute if entity @s[team=blue] at @e[tag=red_marker_5] run summon guardian ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=blue] unless score 回合数 GameRound matches 15.. at @e[tag=red_marker_7] run summon guardian ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=blue] if score 回合数 GameRound matches 15.. at @e[tag=red_marker_7] run summon elder_guardian ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_9] run summon guardian ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}]}

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shenghaikongju kardCount
