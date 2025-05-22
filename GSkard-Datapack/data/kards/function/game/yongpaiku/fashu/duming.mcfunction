execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.fashu.duming.1",color:"dark_purple",hover_event:{action:"show_text","value":"使用后双方队伍进行一次随机点数(1~100) 出现更小值的队伍随机一个玩家将受到内核引爆"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_duming kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute store result score 红队 fashu_duming run random value 1..100
execute store result score 蓝队 fashu_duming run random value 1..100

tellraw @a [{translate: "game.yongpaiku.fashu.duming.2",color:"gold",bold:false}]
tellraw @a [{translate: "game.yongpaiku.fashu.duming.3",color:"gold",bold:false}]

tellraw @a [{translate: "game.yongpaiku.fashu.duming.4",color:"red",bold:false},{score:{objective:"fashu_duming",name:"红队"},color:"green",bold:false}]
tellraw @a [{translate: "game.yongpaiku.fashu.duming.5",color:"blue",bold:false},{score:{objective:"fashu_duming",name:"蓝队"},color:"green",bold:false}]

execute if score 红队 fashu_duming > 蓝队 fashu_duming run tellraw @a [{translate: "game.yongpaiku.fashu.duming.6",color:"gray"},{translate: "game.end.win.red_win.1",color:"red"},{translate: "game.yongpaiku.fashu.duming.7",color:"gray"},{translate: "game.yongpaiku.fashu.duming.8",color:"gray"},{translate: "game.yongpaiku.fashu.duming.9",color:"dark_purple"},{translate: "game.yongpaiku.fashu.duming.10",color:"gray"}]
execute if score 红队 fashu_duming < 蓝队 fashu_duming run tellraw @a [{translate: "game.yongpaiku.fashu.duming.6",color:"gray"},{translate: "game.end.win.blue_win.2",color:"blue"},{translate: "game.yongpaiku.fashu.duming.7",color:"gray"},{translate: "game.yongpaiku.fashu.duming.11",color:"gray"},{translate: "game.yongpaiku.fashu.duming.9",color:"dark_purple"},{translate: "game.yongpaiku.fashu.duming.10",color:"gray"}]
execute if score 红队 fashu_duming = 蓝队 fashu_duming run tellraw @a [{translate: "game.yongpaiku.fashu.duming.12",color:"gray"}]

execute if entity @s[team=red] if score 红队 fashu_duming > 蓝队 fashu_duming as @r[team=blue] at @s run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute if entity @s[team=red] if score 红队 fashu_duming < 蓝队 fashu_duming as @s at @s run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute if entity @s[team=blue] if score 红队 fashu_duming > 蓝队 fashu_duming as @s at @s run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute if entity @s[team=blue] if score 红队 fashu_duming < 蓝队 fashu_duming as @r[team=red] at @s run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute as @e[tag=fireball] run data modify entity @s Motion set value [0d,-0.5d,0d]