

function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] if score 人数 b_alive matches 1 at @e[tag=blue_marker_7,limit=1] run summon warden ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 2 at @e[tag=blue_marker_7,limit=1] run summon warden ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:60.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 3 at @e[tag=blue_marker_7,limit=1] run summon warden ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:90.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 4 at @e[tag=blue_marker_7,limit=1] run summon warden ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:120.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 5 at @e[tag=blue_marker_7,limit=1] run summon warden ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:150.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 6 at @e[tag=blue_marker_7,limit=1] run summon warden ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:180.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 7.. at @e[tag=blue_marker_7,limit=1] run summon warden ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:200.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}

execute if entity @s[team=blue] if score 人数 r_alive matches 1 at @e[tag=red_marker_7,limit=1] run summon warden ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 2 at @e[tag=red_marker_7,limit=1] run summon warden ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:60.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 3 at @e[tag=red_marker_7,limit=1] run summon warden ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:90.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 4 at @e[tag=red_marker_7,limit=1] run summon warden ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:120.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 5 at @e[tag=red_marker_7,limit=1] run summon warden ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:150.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 6 at @e[tag=red_marker_7,limit=1] run summon warden ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:180.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 7.. at @e[tag=red_marker_7,limit=1] run summon warden ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:200.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}

execute if entity @e[type=minecraft:warden,tag=warden_2] run tag @e[type=minecraft:warden,tag=] add warden_3
execute if entity @e[type=minecraft:warden,tag=warden_1] run tag @e[type=minecraft:warden,tag=] add warden_2
tag @e[type=minecraft:warden,tag=] add warden_1

schedule function kards:game/yongpaiku/shenji/youanjianglin/2 2t

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_youanjianglin kardCount
