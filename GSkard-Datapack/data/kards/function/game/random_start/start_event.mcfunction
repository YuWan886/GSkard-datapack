execute if score #system random_gamerule matches 1 as @a[gamemode=adventure] run function kards:game/yongpaiku/shenji/wangzhibaoku/random2
execute if score #system random_gamerule matches 2 run function kards:game/random_start/event/binggexiangxiang
execute if score #system random_gamerule matches 3 run scoreboard players add @a cishu 3
execute if score #system random_gamerule matches 4 run scoreboard players add @a cishu 5
execute if score #system random_gamerule matches 5 run scoreboard players add @a shenjicishu 3
execute if score #system random_gamerule matches 10 run tag @a add linghunshouge
execute if score #system random_gamerule matches 11 run scoreboard players set @a jinziqifeng 5
execute if score #system random_gamerule matches 12 run scoreboard players set @a jinziqifeng 1
execute if score #system random_gamerule matches 13 run scoreboard players set @a jinziqifeng 2
execute if score #system random_gamerule matches 14 run scoreboard players set @a jinziqifeng 3
execute if score #system random_gamerule matches 15 run scoreboard players set @a jinziqifeng 4
execute if score #system random_gamerule matches 16 run scoreboard players set @a kardCountmax 9999
execute if score #system random_gamerule matches 17 as @a[gamemode=adventure] run attribute @s max_health base set 60
execute if score #system random_gamerule matches 19 run function kards:game/random_start/event/gazhikongju
execute if score #system random_gamerule matches 21 run function kards:game/random_start/event/quanfuwuzhuang
execute if score #system random_gamerule matches 22 run scoreboard players set @a[gamemode=adventure] muyuankuanghuan 1
execute if score #system random_gamerule matches 24 run function kards:game/random_start/event/zainanzhixing
execute if score #system random_gamerule matches 25 run schedule function kards:game/random_start/event/move_or_die 3s append
execute if score #system random_gamerule matches 26 as @a[gamemode=adventure] run attribute @s gravity base set 1
execute if score #system random_gamerule matches 28 run function kards:game/random_start/event/shengmingyuanquan
execute if score #system random_gamerule matches 29 as @a[gamemode=adventure] run attribute @s entity_interaction_range base set 4
execute if score #system random_gamerule matches 30 as @a[gamemode=adventure] run attribute @s entity_interaction_range base set 5
execute if score #system random_gamerule matches 31 as @a[gamemode=adventure] run attribute @s entity_interaction_range base set 6
execute if score #system random_gamerule matches 32 as @a[gamemode=adventure] run attribute @s entity_interaction_range base set 8
execute if score #system random_gamerule matches 33 run function kards:game/random_start/event/jurenzhanzheng
execute if score #system random_gamerule matches 34 run function kards:game/random_start/event/xiaorenguo
