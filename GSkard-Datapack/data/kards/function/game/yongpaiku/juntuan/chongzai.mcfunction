execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.juntuan.chongzai.1",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤8只末影瞒"}}]

    #红队用
    execute if entity @s[team=red] as @e[tag=2r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=12r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=2r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=12r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=2b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=12b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=2b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=12b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chongzai kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1