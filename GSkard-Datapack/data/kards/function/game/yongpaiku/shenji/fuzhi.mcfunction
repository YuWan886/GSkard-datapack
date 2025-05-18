execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.fuzhi.1",color:"white",hover_event:{action:"show_text","value":{translate: "game.yongpaiku.shenji.fuzhi.2"}}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
item replace entity @s weapon.offhand with air
scoreboard players set @s chiniaolongyu 0
item replace entity @s weapon.mainhand from entity @s container.0
scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1