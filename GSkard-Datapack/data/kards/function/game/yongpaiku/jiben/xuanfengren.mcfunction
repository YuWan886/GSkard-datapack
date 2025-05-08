execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.jiben.xuanfengren.1",color:"blue"}]
    #红队用
    execute if entity @s[team=red] as @e[tag=7r] at @s run summon breeze ~ 0 ~ {Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=7b] at @s run summon breeze ~ 0 ~ {Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 2
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1