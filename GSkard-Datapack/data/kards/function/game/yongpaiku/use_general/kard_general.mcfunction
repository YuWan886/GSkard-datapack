scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if items entity @s weapon.offhand music_disc_mall run function kards:game/yongpaiku/use_general/jiben
execute if items entity @s weapon.offhand music_disc_13 run function kards:game/yongpaiku/use_general/zhuangbei
execute if items entity @s weapon.offhand music_disc_cat run function kards:game/yongpaiku/use_general/juntuan
execute if items entity @s weapon.offhand music_disc_blocks run function kards:game/yongpaiku/use_general/tuteng
execute if items entity @s weapon.offhand music_disc_wait run function kards:game/yongpaiku/use_general/xianjing
execute if items entity @s weapon.offhand music_disc_mellohi run function kards:game/yongpaiku/use_general/kard_general
execute if items entity @s weapon.offhand music_disc_stal run function kards:game/yongpaiku/use_general/zuzhou
execute if items entity @s weapon.offhand music_disc_strad run function kards:game/yongpaiku/use_general/shenji
