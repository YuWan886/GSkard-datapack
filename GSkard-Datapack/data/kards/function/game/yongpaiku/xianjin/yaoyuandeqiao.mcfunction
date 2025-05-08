execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.jieshi.2.9",color:"dark_aqua",hover_event:{action:"show_text","value":"条件：敌方回合结束时\n触发：清除友方区域所有敌对生物"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.5",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.jieshi.2.9",color:"dark_aqua",hover_event:{action:"show_text","value":"条件：敌方回合结束时\n触发：清除友方区域所有敌对生物"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.5",color:"dark_aqua"}]

#红
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_yaoyuandeqiao 2
#蓝
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_yaoyuandeqiao 2
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1