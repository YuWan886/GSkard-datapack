execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.jiben.jijingshanyang.1",color:"blue"}]

    #红队用
    execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:goat ~ 0 ~ {Team:red,Silent:1b,HasLeftHorn:1b,HasRightHorn:1b,IsScreamingGoat:1b,attributes:[{id:"minecraft:max_health",base:25.0d},{id:"minecraft:attack_damage",base:25.0d}],Health:25.0f,active_effects:[{id:"invisibility",show_particles:0b,duration:41}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:goat ~ 0 ~ {Team:blue,Silent:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,IsScreamingGoat:1b,attributes:[{id:"minecraft:max_health",base:25.0d},{id:"minecraft:attack_damage",base:25.0d}],Health:25.0f,active_effects:[{id:"invisibility",show_particles:0b,duration:41}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jijingshanyang kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1