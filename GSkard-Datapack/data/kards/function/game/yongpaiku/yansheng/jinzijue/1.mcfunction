execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.jinzijue.1.1",color:"dark_red",hover_event:{action:"show_text","value":"首次使用时生命上限被修正至100♥ 每次使用减少10♥ 根据使用次数获得更多增益"}}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

function kards:game/yongpaiku/yansheng/jinzijue/2

