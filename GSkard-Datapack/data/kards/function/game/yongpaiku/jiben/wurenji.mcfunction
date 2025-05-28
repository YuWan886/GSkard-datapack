execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[无人机]",color:"blue"}]

    #红队用
   execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:bat ~ 0 ~ {Team:red,Tags:["wurenji"],Passengers:[{Color:14,id:"minecraft:shulker",Tags:["wurenji"],Team:red}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],attributes:[{id:"follow_range",base:100}]}
    #蓝队用
   execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:bat ~ 0 ~ {Team:blue,Tags:["wurenji"],Passengers:[{Color:11,id:"minecraft:shulker",Tags:["wurenji"],Team:blue}],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],attributes:[{id:"follow_range",base:100}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wurenji kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

