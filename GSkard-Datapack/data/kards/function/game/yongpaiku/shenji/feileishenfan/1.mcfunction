execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.feileishenfan.1.1",color:"white",hover_event:{action:"show_text","value":"对方阵营传送至我方区域 10s后折回"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
#红
execute as @s at @s if entity @s[team=red] run tag @r[team=blue] add fanxiangfeileishen
execute as @s at @s if entity @s[team=blue] run tag @r[team=red] add fanxiangfeileishen
execute as @s at @s run tp @a[tag=fanxiangfeileishen] ~ ~ ~
execute as @a[tag=fanxiangfeileishen] at @s run scoreboard players set @s feileishen 200
tag @a remove fanxiangfeileishen
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1