execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[末日来临]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤两只闪电苦力怕"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon creeper ~ 0 ~ {powered:1b,Team:red}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon creeper ~ 0 ~ {powered:1b,Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon creeper ~ 0 ~ {powered:1b,Team:blue}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon creeper ~ 0 ~ {powered:1b,Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_morilailing kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1