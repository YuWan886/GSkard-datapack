execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.shenji.jinfajiejie.1",color:"white",hover_event:{action:"show_text","value":"敌方随机两名玩家-4Kmax"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
#红
execute if entity @s[team=red] run scoreboard players remove @a[team=blue,gamemode=adventure,sort=random,limit=2] kardCountmax 4
#蓝
execute if entity @s[team=blue] run scoreboard players remove @a[team=red,gamemode=adventure,sort=random,limit=2] kardCountmax 4
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinfajiejie kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1