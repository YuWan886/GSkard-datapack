execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.paiku.fashu.fanzhuan.1.1",color:"dark_purple",hover_event:{action:"show_text","value":"将双方图腾交换"}}]

item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 10
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute at @e[limit=1,tag=r_dw] run team join blue @e[tag=tuteng,dx=36,dy=255,dz=26,team=red]
execute at @e[limit=1,tag=b_dw] run team join red @e[tag=tuteng,dx=36,dy=255,dz=26,team=blue]
function kards:game/yongpaiku/fashu/fanzhuan/2