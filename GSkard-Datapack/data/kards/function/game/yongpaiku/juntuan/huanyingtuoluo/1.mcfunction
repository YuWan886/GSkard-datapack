execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[幻影陀螺]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤4只幻影陀螺"}}]

    #红队用
    execute if entity @s[team=red] at @e[tag=2r] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:red,Tags:["huanyingtuoluo"]}
    execute if entity @s[team=red] at @e[tag=5r] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:red,Tags:["huanyingtuoluo"]}
    execute if entity @s[team=red] at @e[tag=9r] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:red,Tags:["huanyingtuoluo"]}
    execute if entity @s[team=red] at @e[tag=12r] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:red,Tags:["huanyingtuoluo"]}
    #蓝队用
    execute if entity @s[team=blue] at @e[tag=2b] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:blue,Tags:["huanyingtuoluo"]}
    execute if entity @s[team=blue] at @e[tag=5b] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:blue,Tags:["huanyingtuoluo"]}
    execute if entity @s[team=blue] at @e[tag=9b] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:blue,Tags:["huanyingtuoluo"]}
    execute if entity @s[team=blue] at @e[tag=12b] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d},{id:"attack_damage",base:6.0d},{id:"movement_speed",base:0.35}],Health:30.0f,Team:blue,Tags:["huanyingtuoluo"]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chongzai kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

