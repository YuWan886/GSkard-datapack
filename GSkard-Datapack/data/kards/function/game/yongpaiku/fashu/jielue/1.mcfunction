execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[劫掠]",color:"dark_purple",hover_event:{action:"show_text",value:"掠夺一只敌方图腾"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jielue kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red,type=player] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red,type=player] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0

#红
execute if entity @s[team=red] unless entity @e[tag=tuteng,team=blue] run tellraw @a [{text: "蓝队貌似没有任何图腾...",color:"gray"}]
execute if entity @s[team=red] as @e[tag=tuteng,limit=1,team=blue,sort=random] run function kards:game/yongpaiku/fashu/jielue/2
#蓝
execute if entity @s[team=blue] if entity @s[team=blue] if score 红队 xianjin_shufashixiao matches 0 unless entity @e[tag=tuteng,team=red] run tellraw @a [{text: "红队貌似没有任何图腾...",color:"gray"}]
execute if entity @s[team=blue] as @e[tag=tuteng,limit=1,team=red,sort=random] run function kards:game/yongpaiku/fashu/jielue/3

