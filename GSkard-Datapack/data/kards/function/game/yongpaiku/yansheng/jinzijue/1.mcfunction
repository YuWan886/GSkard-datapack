execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[禁字诀]",color:"dark_red",hover_event:{action:"show_text",value:"首次使用时生命上限被修正至100♥ 每次使用减少10♥ 根据使用次数获得更多增益"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinzijue kardCount


function kards:game/yongpaiku/yansheng/jinzijue/2

