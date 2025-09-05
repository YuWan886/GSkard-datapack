function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance

execute if entity @s[team=red] run scoreboard players set @a[team=blue,gamemode=adventure] JinFaJieJie 1

execute if entity @s[team=blue] run scoreboard players remove @a[team=red,gamemode=adventure] JinFaJieJie 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinfajiejie kardCount
