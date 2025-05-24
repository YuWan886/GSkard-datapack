execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.langqunzhanshu.1",color:"dark_purple",hover_event:{action:"show_text","value":"敌方两名玩家下回合开始时不能抽牌"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_langqunzhanshu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

#红
execute if entity @s[team=red] run scoreboard players add @a[team=blue,limit=2,gamemode=adventure,scores={langqunzhanshu=0},sort=random] langqunzhanshu 1
#蓝
execute if entity @s[team=blue] run scoreboard players add @a[team=red,limit=2,gamemode=adventure,scores={langqunzhanshu=0},sort=random] langqunzhanshu 1

