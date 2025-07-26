
execute if entity @s[team=red] run tag @r[team=blue,gamemode=adventure] add peiyangshi_damage
execute if entity @s[team=blue] run tag @r[team=red,gamemode=adventure] add peiyangshi_damage

execute if entity @s[team=red] run damage @r[team=blue,gamemode=adventure,tag=peiyangshi_damage] 10 kards:peiyangshi by @s
execute if entity @s[team=blue] run damage @r[team=red,gamemode=adventure,tag=peiyangshi_damage] 10 kards:peiyangshi by @s
scoreboard players add @s peiyangshi 10
tellraw @a [{selector:"@s"},{text:"咬了一口",color:"gray"},{selector:"@a[tag=peiyangshi_damage]"}]
tag @a[tag=peiyangshi_damage] remove peiyangshi_damage
execute if score @s peiyangshi matches 60 run function kards:game/yongpaiku/tuteng/round_event/peiyangshi/2