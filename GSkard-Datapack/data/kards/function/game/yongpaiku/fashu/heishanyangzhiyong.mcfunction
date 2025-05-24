execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.heishanyangzhiyong.1",color:"dark_purple",hover_event:{action:"show_text","value":"使用后进行一次随机点数(1~10) 根据结果不同获得不同效果"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_heishanyangzhiyong kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute store result score @s fashu_heishanyangzhiyong run random value 1..10

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players add @s HealBack 8
execute if score @s fashu_heishanyangzhiyong matches 4..8 run scoreboard players add @s HealBack 16
execute if score @s fashu_heishanyangzhiyong matches 9..10 run scoreboard players add @s HealBack 32

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players remove @s kardCountmax 2
execute if score @s fashu_heishanyangzhiyong matches 4..6 run scoreboard players remove @s kardCountmax 4
execute if score @s fashu_heishanyangzhiyong matches 7..10 run scoreboard players remove @s kardCountmax 6

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players add @s cishu 1
execute if score @s fashu_heishanyangzhiyong matches 4..6 run scoreboard players add @s cishu 3
execute if score @s fashu_heishanyangzhiyong matches 7..8 run scoreboard players add @s cishu 5
execute if score @s fashu_heishanyangzhiyong matches 9..10 run scoreboard players add @s cishu 2
execute if score @s fashu_heishanyangzhiyong matches 9..10 run scoreboard players add @s shenjicishu 1


tellraw @a [{translate: "game.yongpaiku.fashu.heishanyangzhiyong.2",color:"gold",bold:false}]
tellraw @a [{translate: "game.yongpaiku.fashu.heishanyangzhiyong.3",color:"gold",bold:false},{score:{objective:"fashu_heishanyangzhiyong",name:"@s"},color:"green",bold:false}]

execute if score @s fashu_heishanyangzhiyong matches 1..3 run tellraw @a [{translate: "game.yongpaiku.fashu.heishanyangzhiyong.4",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 4..6 run tellraw @a [{translate: "game.yongpaiku.fashu.heishanyangzhiyong.5",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 7..8 run tellraw @a [{translate: "game.yongpaiku.fashu.heishanyangzhiyong.6",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 9..10 run tellraw @a [{translate: "game.yongpaiku.fashu.heishanyangzhiyong.7",color:"gold",bold:false}]

scoreboard players set @s fashu_heishanyangzhiyong 0
