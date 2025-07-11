execute if score #system random_gamerule matches 6 as @a[gamemode=adventure] run function kards:game/random_start/event/mofazhanzheng/all
execute if score #system random_gamerule matches 7 as @a[gamemode=adventure] run function kards:game/random_start/event/pusu/all
execute if score #system random_gamerule matches 9 as @a[gamemode=adventure] run function kards:game/random_start/event/shenzhizhan/all
execute if score #system random_gamerule matches 20 as @a[gamemode=adventure] if score @s shenjicishu matches 1.. run function kards:game/random_start/event/shenjibuzai
execute if score #system random_gamerule matches 23 as @a[gamemode=adventure] run function kards:game/random_start/event/kuanghonglanzha/all
execute if score #system random_gamerule matches 27 run scoreboard players set @a HealBack 0
