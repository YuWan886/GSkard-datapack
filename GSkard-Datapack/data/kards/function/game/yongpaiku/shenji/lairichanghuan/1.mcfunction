execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.lairichanghuan.1.1",color:"white",hover_event:{action:"show_text","value":"记录你上一回合至使用本卡时间内的所有伤害 造成等额伤害分配至敌方所有玩家"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
scoreboard players operation @s damage_jilu += @s lairichanghuan
scoreboard players set @s changhuan 1
scoreboard players add @s changhuan_times 1

item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1