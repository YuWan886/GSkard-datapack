execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.haogaowuyuan.1",color:"white",hover_event:{action:"show_text","value":"弃掉所有的牌 抽数量+2的牌"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
item replace entity @s weapon.offhand with air
execute store result score @s chiniaolongyu run clear @s #minecraft:creeper_drop_music_discs 0
clear @s #minecraft:creeper_drop_music_discs
scoreboard players operation @s cishu = @s chiniaolongyu
scoreboard players add @s cishu 2
scoreboard players set @s chiniaolongyu 0

scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1