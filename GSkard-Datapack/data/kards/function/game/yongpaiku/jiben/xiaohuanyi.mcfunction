execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.jiben.xiaohuanyi.1",color:"blue"}]

    #红队用
   execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:phantom ~ 5 ~ {size:4,attributes:[{id:"minecraft:scale",base:0.4d}],Team:red}
    #蓝队用
   execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:phantom ~ 5 ~ {size:4,attributes:[{id:"minecraft:scale",base:0.4d}],Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiaohuanyi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

