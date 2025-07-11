execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[无人机]",color:"blue"}]


   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:bat ~ 5 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}

   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:bat ~ 5 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wurenji kardCount


