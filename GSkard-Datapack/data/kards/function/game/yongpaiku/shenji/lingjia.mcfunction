execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.lingjia.1",color:"white",hover_event:{action:"show_text","value":"获得一张君临天下卡牌"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/paiku/fashu/junlintianxia
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 10
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1