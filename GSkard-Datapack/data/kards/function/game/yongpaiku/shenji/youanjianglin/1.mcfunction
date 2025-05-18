execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.youanjianglin.1.1",color:"white",hover_event:{action:"show_text","value":"在敌方召唤监守者 动态平衡：队伍玩家每有一人 监守者最大生命增加30(30~200)"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
#红
execute if entity @s[team=red] if score 人数 b_alive matches 1 as @e[tag=7r] at @s run summon warden ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:30.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 2 as @e[tag=7r] at @s run summon warden ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:60.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 3 as @e[tag=7r] at @s run summon warden ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:90.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 4 as @e[tag=7r] at @s run summon warden ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:120.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 5 as @e[tag=7r] at @s run summon warden ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:150.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 6 as @e[tag=7r] at @s run summon warden ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:180.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=red] if score 人数 b_alive matches 7.. as @e[tag=7r] at @s run summon warden ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:200.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
#蓝
execute if entity @s[team=blue] if score 人数 r_alive matches 1 as @e[tag=7b] at @s run summon warden ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:30.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 2 as @e[tag=7b] at @s run summon warden ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:60.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 3 as @e[tag=7b] at @s run summon warden ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:90.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 4 as @e[tag=7b] at @s run summon warden ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:120.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 5 as @e[tag=7b] at @s run summon warden ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:150.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 6 as @e[tag=7b] at @s run summon warden ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:180.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
execute if entity @s[team=blue] if score 人数 r_alive matches 7.. as @e[tag=7b] at @s run summon warden ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:200.0d}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}

execute if entity @e[type=minecraft:warden,tag=warden_2] run tag @e[type=minecraft:warden,tag=] add warden_3
execute if entity @e[type=minecraft:warden,tag=warden_1] run tag @e[type=minecraft:warden,tag=] add warden_2
tag @e[type=minecraft:warden,tag=] add warden_1

schedule function kards:game/yongpaiku/shenji/youanjianglin/2 2t

item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 20
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1