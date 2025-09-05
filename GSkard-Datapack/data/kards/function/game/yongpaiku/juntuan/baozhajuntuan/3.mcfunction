execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["jiben_creeper"]}

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["jiben_creeper"]}
scoreboard players operation @s kardCount -= #kard_kulipa kardCount
clear @s music_disc_mall[custom_data~{kards:'苦力怕'}] 1