execute if score @s pingbi matches 0 run function kards:game/yongpaiku/use_general/tellraw

scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players add @s[scores={ChaoPin=1}] kardCount 1

execute store result score @s Use_K_temp run data get entity @s equipment.offhand.components.minecraft:custom_data.K
execute store result score @s Use_Kmax_temp run data get entity @s equipment.offhand.components.minecraft:custom_data.Kmax
scoreboard players operation @s Use_K_Round += @s Use_K_temp
scoreboard players operation @s Use_K_Game += @s Use_K_temp
scoreboard players operation @s Use_Kmax_Round += @s Use_Kmax_temp
scoreboard players operation @s Use_Kmax_Game += @s Use_Kmax_temp

execute if items entity @s weapon.offhand music_disc_mall run function kards:game/yongpaiku/use_general/jiben
execute if items entity @s weapon.offhand music_disc_13 run function kards:game/yongpaiku/use_general/zhuangbei
execute if items entity @s weapon.offhand music_disc_cat run function kards:game/yongpaiku/use_general/juntuan
execute if items entity @s weapon.offhand music_disc_blocks run function kards:game/yongpaiku/use_general/tuteng
execute if items entity @s weapon.offhand music_disc_wait run function kards:game/yongpaiku/use_general/xianjing
execute if items entity @s weapon.offhand music_disc_mellohi run function kards:game/yongpaiku/use_general/fashu
execute if items entity @s weapon.offhand music_disc_stal run function kards:game/yongpaiku/use_general/zuzhou
execute if items entity @s weapon.offhand music_disc_strad run function kards:game/yongpaiku/use_general/shenji

