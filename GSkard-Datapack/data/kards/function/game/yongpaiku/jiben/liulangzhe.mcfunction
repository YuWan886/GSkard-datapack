execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.jiben.liulangzhe.1",color:"blue"}]
#红队用
execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:stray ~ 0 ~ {Team:red,HandItems:[{id:"minecraft:bow"},{}]}
#蓝队用
execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:stray ~ 0 ~ {Team:blue,HandItems:[{id:"minecraft:bow"},{}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_liulangzhe kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1