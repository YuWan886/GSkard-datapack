<<<<<<< HEAD
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.fashu.junlintianxia.jy0.1",color:"white",hover_event:{action:"show_text","value":"对周围敌人造成伤害，恢复血量，抽一张卡"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_junlintianxia kardCount
=======
execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[君临天下]","color":"white","hoverEvent":{"action":"show_text","value":"对周围敌人造成伤害，恢复血量，抽一张卡"}}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 0
>>>>>>> c337d2e (加入一些卡牌)
execute as @s at @s run function kards:game/yongpaiku/fashu/junlintianxia/jy with entity @s
scoreboard players add @s use_kard 1
scoreboard players add @s[gamemode=adventure] cishu 1
scoreboard players set @s pingbi 0

function kards:game/yongpaiku/xianjin/jiance/fashujiance
effect give @s instant_health 1 3 true
