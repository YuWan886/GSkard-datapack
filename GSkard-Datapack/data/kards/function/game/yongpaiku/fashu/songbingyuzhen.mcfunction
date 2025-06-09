execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[死刑宣告]",color:"dark_purple",hover_event:{action:"show_text",value:"在敌方所有玩家头顶召唤造成高伤害的铁砧"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_songbingyuzhen kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red,type=player] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red,type=player] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute if entity @s[team=red] at @a[gamemode=adventure,team=blue] run summon minecraft:falling_block ~ ~4.5 ~ {BlockState:{Name:"anvil"},CancelDrop:1b,DropItem:0b,FallHurtAmount:25.0f,FallHurtMax:25,HurtEntities:1b,Invulnerable:1b,Motion:[0,-0.6d,0],NoGravity:0b}
execute if entity @s[team=blue] at @a[gamemode=adventure,team=red] run summon minecraft:falling_block ~ ~4.5 ~ {BlockState:{Name:"anvil"},CancelDrop:1b,DropItem:0b,FallHurtAmount:25.0f,FallHurtMax:25,HurtEntities:1b,Invulnerable:1b,Motion:[0,-0.6d,0],NoGravity:0b}