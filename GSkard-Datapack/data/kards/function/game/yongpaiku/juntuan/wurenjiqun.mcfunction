



    execute if entity @s[team=red] as @e[tag=blue_marker_4] at @s run summon minecraft:bat ~ 5 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon minecraft:bat ~ 5 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon minecraft:bat ~ 5 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_10] at @s run summon minecraft:bat ~ 5 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}

    execute if entity @s[team=blue] as @e[tag=red_marker_4] at @s run summon minecraft:bat ~ 5 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon minecraft:bat ~ 5 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon minecraft:bat ~ 5 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_10] at @s run summon minecraft:bat ~ 5 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wurenjiqun kardCount
