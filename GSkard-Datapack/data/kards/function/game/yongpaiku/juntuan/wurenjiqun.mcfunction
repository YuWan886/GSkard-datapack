execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.juntuan.wurenjiqun.1",color:"dark_green",hover_event:{action:"show_text","value":"召唤4只无人机"}}]

    #红队用
    execute if entity @s[team=red] as @e[tag=4r] at @s run summon minecraft:bat ~ 0 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=6r] at @s run summon minecraft:bat ~ 0 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=8r] at @s run summon minecraft:bat ~ 0 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=10r] at @s run summon minecraft:bat ~ 0 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=4b] at @s run summon minecraft:bat ~ 0 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=6b] at @s run summon minecraft:bat ~ 0 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=8b] at @s run summon minecraft:bat ~ 0 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=10b] at @s run summon minecraft:bat ~ 0 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 12
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1