execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.fashu.sixingxuangao.1",color:"dark_purple",hover_event:{action:"show_text","value":"在敌方所有玩家头顶召唤造成高伤害的铁砧"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_sixingxuangao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute if entity @s[team=red] at @a[gamemode=adventure,team=blue] align xz run summon minecraft:falling_block ~0.5 ~4 ~0.5 {Air:300s,BlockState:{Name:"anvil"},CanUpdate:1b,CancelDrop:1b,DropItem:0b,FallDistance:0.23681599f,FallHurtAmount:15.0f,FallHurtMax:20,Fire:-1s,Health:0.0f,HurtEntities:1b,Invulnerable:1b,Motion:[0.0d,-0.11526368d,0.0d],OnGround:0b,PortalCooldown:0,Time:3,id:"minecraft:falling_block"}
execute if entity @s[team=blue] at @a[gamemode=adventure,team=red] align xz run summon minecraft:falling_block ~0.5 ~4 ~0.5 {Air:300s,BlockState:{Name:"anvil"},CanUpdate:1b,CancelDrop:1b,DropItem:0b,FallDistance:0.23681599f,FallHurtAmount:15.0f,FallHurtMax:20,Fire:-1s,Health:0.0f,HurtEntities:1b,Invulnerable:1b,Motion:[0.0d,-0.11526368d,0.0d],OnGround:0b,PortalCooldown:0,Time:3,id:"minecraft:falling_block"}

