execute if score #system random_start matches 1 as @a[gamemode=adventure] run function kards:game/yongpaiku/shenji/wangzhibaoku/random2
execute if score #system random_start matches 2 run scoreboard players add @a shenjicishu 3
execute if score #system random_start matches 5 run scoreboard players set @a kardCountmax 9999
execute if score #system random_start matches 5 run scoreboard players add @a cishu 3
execute if score #system random_start matches 6 run function kards:game/random_start/event/gazhikongju
execute if score #system random_start matches 7 run scoreboard players set @a[gamemode=adventure] muyuankuanghuan 1
execute if score #system random_start matches 9 run function kards:game/random_start/event/zainanzhixing
execute if score #system random_start matches 10 run function kards:game/random_start/event/move_or_die
execute if score #system random_start matches 14 run scoreboard players set @a[gamemode=adventure] tanyumohe 1