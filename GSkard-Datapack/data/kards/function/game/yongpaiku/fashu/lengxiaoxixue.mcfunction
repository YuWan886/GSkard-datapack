function kards:game/yongpaiku/use_general/kard_general

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_lengxiaoxixue kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] run scoreboard players add @a[team=blue,gamemode=adventure] DongJie 24

execute if entity @s[team=blue] run scoreboard players add @a[team=red,gamemode=adventure] DongJie 24

execute at @s store result score @s xixue_lx_temp1 if entity @a[gamemode=adventure,distance=0.01..]

#检测友伤是否已经开启，如果已经开启就不管，如果没有开启则开启，并且最后恢复
execute if entity @s[team=red] run team modify red friendlyFire true
execute if entity @s[team=blue] run team modify blue friendlyFire true

#造成伤害
execute at @s as @a[gamemode=adventure,distance=0.01..] run damage @s 3 kards:xixuegui by @p

#如果before为1，则代表之前友伤关闭，则现在重新关闭
#如果为0，则代表本来就开启，什么也不做
execute if entity @s[team=red] unless score red FriendlyFire matches 1 run team modify red friendlyFire false
execute if entity @s[team=blue] unless score blue FriendlyFire matches 1 run team modify blue friendlyFire false

scoreboard players set @s xixue_lx_temp2 7
scoreboard players operation @s xixue_lx_temp1 *= @s xixue_lx_temp2

scoreboard players operation @s HealBack += @s xixue_lx_temp1
