function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_langqunzhanshu kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] run scoreboard players add @a[team=blue,limit=2,gamemode=adventure,scores={langqunzhanshu=0},sort=random] langqunzhanshu 1

execute if entity @s[team=blue] run scoreboard players add @a[team=red,limit=2,gamemode=adventure,scores={langqunzhanshu=0},sort=random] langqunzhanshu 1

