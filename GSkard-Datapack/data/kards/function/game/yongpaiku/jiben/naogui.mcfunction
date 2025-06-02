execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[恼鬼]",color:"blue"}]
    #红队用
    execute if entity @s[team=red] as @e[tag=7r] at @s run summon vex ~ 5 ~ {Team:red,equipment:{mainhand:{id:"minecraft:iron_sword"}}}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=7b] at @s run summon vex ~ 5 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:iron_sword"}}}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_naogui kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1