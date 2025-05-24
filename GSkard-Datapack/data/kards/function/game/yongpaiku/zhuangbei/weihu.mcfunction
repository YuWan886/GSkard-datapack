execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.weihu.1",color:"gold",hover_event:{action:"show_text","value":"为你主手武器增加十点击杀数"}}]
scoreboard players add @s killed_entity 10

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_weihu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1