#侦测贝
execute if entity @s[team=red] if entity @e[tag=tuteng,team=red,type=shulker] run return fail
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=blue,type=shulker] run return fail
#来自深处
execute if entity @s[team=red] if score 红队 xianjin_laizishenchu matches 1 run scoreboard players add @a[team=blue] HealBack 16
execute if entity @s[team=red] if score 红队 xianjin_laizishenchu matches 1 run tellraw @a [{selector: "@s"},{translate: "game.yongpaiku.xianjin.jiance.fashujiance.1",color: "gray"},{translate: "game.yongpaiku.xianjin.jiance.shenjijiance.1",color: "dark_aqua",hover_event:{action:"show_text","value":"触发时让使用该陷阱牌队伍所有玩家回复血量16♥"}}]
execute if entity @s[team=red] if score 红队 xianjin_laizishenchu matches 1 as @a at @s run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 100 0
execute if entity @s[team=red] if score 红队 xianjin_laizishenchu matches 1 run scoreboard players set 红队 xianjin_laizishenchu 0

execute if entity @s[team=blue] if score 蓝队 xianjin_laizishenchu matches 1 run scoreboard players add @a[team=red] HealBack 16
execute if entity @s[team=blue] if score 蓝队 xianjin_laizishenchu matches 1 run tellraw @a [{selector: "@s"},{translate: "game.yongpaiku.xianjin.jiance.fashujiance.1",color: "gray"},{translate: "game.yongpaiku.xianjin.jiance.shenjijiance.1",color: "dark_aqua",hover_event:{action:"show_text","value":"触发时让使用该陷阱牌队伍所有玩家回复血量16♥"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_laizishenchu matches 1 as @a at @s run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 100 0
execute if entity @s[team=blue] if score 蓝队 xianjin_laizishenchu matches 1 run scoreboard players set 蓝队 xianjin_laizishenchu 0
#千钧一发
execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 positioned as @e[limit=1,tag=r_dw] as @e[type=!player,tag=!tuteng,dx=24,dz=24,dy=255] run data modify entity @s NoAI set value 0b
execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 positioned as @e[limit=1,tag=r_dw] as @e[type=!player,tag=!tuteng,dx=24,dz=24,dy=255] run data modify entity @s Invulnerable set value 0b
execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 run team join blue @e[tag=!tuteng,type=!minecraft:player]
execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 run tellraw @a [{selector: "@s"},{translate: "game.yongpaiku.xianjin.jiance.fashujiance.1",color: "gray"},{translate: "game.yongpaiku.xianjin.jiance.shenjijiance.2",color: "dark_aqua",hover_event:{action:"show_text","value":"触发时让使用该陷阱牌队伍场地所有敌对怪物传送至触发者队伍场地"}}]
execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 at @e[tag=7b] run tp @e[type=!minecraft:player,tag=!tuteng,team=blue,type=!minecraft:armor_stand] ~ 0 ~
execute as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s NoAI set value 1b
execute as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s Invulnerable set value 1b

execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 as @a at @s run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 100 0
execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 run scoreboard players set 红队 xianjin_qianjunyifa 0

execute if entity @s[team=blue] if score 红队 xianjin_qianjunyifa matches 1 positioned as @e[limit=1,tag=b_dw] as @e[type=!player,tag=!tuteng,dx=24,dz=24,dy=255] run data modify entity @s NoAI set value 0b
execute if entity @s[team=blue] if score 红队 xianjin_qianjunyifa matches 1 positioned as @e[limit=1,tag=b_dw] as @e[type=!player,tag=!tuteng,dx=24,dz=24,dy=255] run data modify entity @s Invulnerable set value 0b
execute if entity @s[team=blue] if score 蓝队 xianjin_qianjunyifa matches 1 run team join red @e[tag=!tuteng,type=!minecraft:player]
execute if entity @s[team=blue] if score 蓝队 xianjin_qianjunyifa matches 1 run tellraw @a [{selector: "@s"},{translate: "game.yongpaiku.xianjin.jiance.fashujiance.1",color: "gray"},{translate: "game.yongpaiku.xianjin.jiance.shenjijiance.2",color: "dark_aqua",hover_event:{action:"show_text","value":"触发时让使用该陷阱牌队伍场地所有敌对怪物传送至触发者队伍场地"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_qianjunyifa matches 1 at @e[tag=7r] run tp @e[type=!minecraft:player,tag=!tuteng,team=red,type=!minecraft:armor_stand] ~ 0 ~

execute if entity @s[team=blue] if score 蓝队 xianjin_qianjunyifa matches 1 as @a at @s run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 100 0
execute if entity @s[team=blue] if score 蓝队 xianjin_qianjunyifa matches 1 run scoreboard players set 蓝队 xianjin_qianjunyifa 0