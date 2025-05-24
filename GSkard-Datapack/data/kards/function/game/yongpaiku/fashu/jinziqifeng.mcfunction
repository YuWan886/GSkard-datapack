execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[禁字启封]",color:"dark_purple",hover_event:{action:"show_text",value:"增加10%抽取[禁字决]的概率\n最高为60%"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinziqifeng kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

#红
scoreboard players add @s jinziqifeng 1
scoreboard players set @s[scores={jinziqifeng=7..}] jinziqifeng 6
tellraw @s [{text: "当前",color:"gray"},{text: "[禁字决]",color:"dark_purple"},{text: "抽取概率为",color:"gray"},{score:{name:"@s",objective:"jinziqifeng"},color:"gold"},{text: "0",color:"gold"},{text: "%",color:"gold"}]

