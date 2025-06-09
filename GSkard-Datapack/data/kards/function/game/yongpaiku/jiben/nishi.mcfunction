execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[溺尸]",color:"blue"}]
    #红队用
    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:drowned ~ 0 ~ {equipment:{mainhand:{id:"minecraft:trident"}},Team:red,attributes:[{id:"follow_range",base:100}]}
    #蓝队用
    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:drowned ~ 0 ~ {equipment:{mainhand:{id:"minecraft:trident"}},Team:blue,attributes:[{id:"follow_range",base:100}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_nishi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1