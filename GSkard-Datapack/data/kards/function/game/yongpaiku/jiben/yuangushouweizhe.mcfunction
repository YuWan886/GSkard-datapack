execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.jiben.yuangushouweizhe.1",color:"gray"}]

    #红队用
   execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:elder_guardian ~ 0 ~ {Team:red,Health:40.0f}
    #蓝队用
   execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:elder_guardian ~ 0 ~ {Team:blue,Health:40.0f}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1