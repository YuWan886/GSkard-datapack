execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[寂静山羊]",color:"blue"}]

    #红队用
    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:goat ~ 1 ~ {Team:red,Silent:1b,HasLeftHorn:1b,HasRightHorn:1b,IsScreamingGoat:1b,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:25.0d},{id:"minecraft:attack_damage",base:25.0d}],Health:25.0f,active_effects:[{id:"invisibility",show_particles:0b,duration:41}]}
    #蓝队用
    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:goat ~ 1 ~ {Team:blue,Silent:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,IsScreamingGoat:1b,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:25.0d},{id:"minecraft:attack_damage",base:25.0d}],Health:25.0f,active_effects:[{id:"invisibility",show_particles:0b,duration:41}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jijingshanyang kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1