execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[黑山羊之拥]",color:"dark_purple",hover_event:{action:"show_text",value:"使用后进行一次随机点数(1~10) 根据结果不同获得不同效果"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_heishanyangzhiyong kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute store result score @s fashu_heishanyangzhiyong run random value 1..10

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players add @s HealBack 16
execute if score @s fashu_heishanyangzhiyong matches 4..8 run scoreboard players add @s HealBack 32
execute if score @s fashu_heishanyangzhiyong matches 9..10 run scoreboard players add @s HealBack 64

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players remove @s kardCountmax 2
execute if score @s fashu_heishanyangzhiyong matches 4..6 run scoreboard players remove @s kardCountmax 4
execute if score @s fashu_heishanyangzhiyong matches 7..10 run scoreboard players remove @s kardCountmax 6

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players add @s cishu 1
execute if score @s fashu_heishanyangzhiyong matches 4..6 run scoreboard players add @s cishu 3
execute if score @s fashu_heishanyangzhiyong matches 7..8 run scoreboard players add @s cishu 5
execute if score @s fashu_heishanyangzhiyong matches 9..10 run scoreboard players add @s cishu 2
execute if score @s fashu_heishanyangzhiyong matches 9..10 run scoreboard players add @s shenjicishu 1


tellraw @a [{text: "进行了一次随机点数(1~10)",color:"gold",bold:false}]
tellraw @a [{text: "点数为 ",color:"gold",bold:false},{score:{objective:"fashu_heishanyangzhiyong",name:"@s"},color:"green",bold:false}]

execute if score @s fashu_heishanyangzhiyong matches 1..3 run tellraw @a [{text: "他获得了 -2Kmax 治疗8♥ 抽1张牌",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 4..6 run tellraw @a [{text: "他获得了 -4Kmax 治疗16♥ 抽3张牌",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 7..8 run tellraw @a [{text: "他获得了 -6Kmax 治疗16♥ 抽5张牌",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 9..10 run tellraw @a [{text: "他获得了 -6Kmax 治疗32♥ 抽2张牌与1张神迹牌",color:"gold",bold:false}]

scoreboard players set @s fashu_heishanyangzhiyong 0
