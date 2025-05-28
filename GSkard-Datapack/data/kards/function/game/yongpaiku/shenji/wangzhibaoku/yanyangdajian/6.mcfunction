execute store result score @s yanyangdajian_jiben run clear @s music_disc_mall 2
execute store result score @s yanyangdajian_juntuan run clear @s music_disc_cat 2

execute if score @s yanyangdajian_jiben matches 1.. run function kards:game/paiku/yansheng/huoqiutouzi
execute if score @s yanyangdajian_juntuan matches 1.. run function kards:game/paiku/yansheng/yanhuoqishituan
