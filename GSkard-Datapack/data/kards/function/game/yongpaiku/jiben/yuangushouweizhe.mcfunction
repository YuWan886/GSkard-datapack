execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[远古守卫者]",color:"blue"}]

    #红队用
   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:elder_guardian ~ 5 ~ {Team:red,Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:40}]}
    #蓝队用
   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:elder_guardian ~ 5 ~ {Team:blue,Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:40}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_yuangushouweizhe kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1