execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zuzhou.pingbi.1",color:"dark_gray",hover_event:{action:"show_text","value":"你使用的下一张牌 没有用牌信息 但使用该卡的后续其他信息不会屏蔽 且仍会触发陷阱"}}]
scoreboard players set @s pingbi 0
scoreboard players set @s pingbi 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_pingbi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players add @s use_kard 1