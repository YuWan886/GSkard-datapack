execute store result score @s random2 run random value 1..305
execute if score @s random2 matches 1..20 run function kards:game/paiku/juntuan/xingshizourou
execute if score @s random2 matches 21..25 run function kards:game/paiku/juntuan/errenchengjun
execute if score @s random2 matches 26..40 run function kards:game/paiku/juntuan/jieluexiaodui
execute if score @s random2 matches 41..55 run function kards:game/paiku/juntuan/wanglingdajun
execute if score @s random2 matches 56..70 run function kards:game/paiku/juntuan/diyuzhihuo
execute if score @s random2 matches 71..80 run function kards:game/paiku/juntuan/baozhajuntuan
execute if score @s random2 matches 81..90 run function kards:game/paiku/juntuan/mengduzhuaya
execute if score @s random2 matches 91..97 run function kards:game/paiku/juntuan/shenghaikongju
execute if score @s random2 matches 98..100 run function kards:game/paiku/juntuan/morilailin
execute if score @s random2 matches 101..105 run function kards:game/paiku/juntuan/zaieshuangxing
execute if score @s random2 matches 106..115 run function kards:game/paiku/juntuan/wufalianhui
execute if score @s random2 matches 116..125 run function kards:game/paiku/juntuan/chongzai
execute if score @s random2 matches 126..135 run function kards:game/paiku/juntuan/xiaozhukuaipao
execute if score @s random2 matches 136..145 run function kards:game/paiku/juntuan/shashouxiaodui
execute if score @s random2 matches 146..160 run function kards:game/paiku/juntuan/xiajieruqing
execute if score @s random2 matches 161..180 run function kards:game/paiku/juntuan/jufengguojing
execute if score @s random2 matches 181..200 run function kards:game/paiku/juntuan/sheshoubudui
execute if score @s random2 matches 201..220 run function kards:game/paiku/juntuan/fengyongerzhi
execute if score @s random2 matches 221..225 run function kards:game/paiku/juntuan/shixuelangqun
execute if score @s random2 matches 226..235 run function kards:game/paiku/juntuan/wurenjiqun
execute if score @s random2 matches 236..245 run function kards:game/paiku/juntuan/wojilangchao
execute if score @s random2 matches 246..250 run function kards:game/paiku/juntuan/silingwushi
execute if score @s random2 matches 251..265 run function kards:game/paiku/juntuan/xiaoguidangjia
execute if score @s random2 matches 266..275 run function kards:game/paiku/juntuan/wuwangjiangshi
execute if score @s random2 matches 276..285 run function kards:game/paiku/juntuan/sanrenchengzhong
execute if score @s random2 matches 286..295 run function kards:game/paiku/juntuan/huanyingtuoluo
execute if score @s random2 matches 296..305 run function kards:game/paiku/juntuan/zibaojuntuan
scoreboard players set @s random2 0
scoreboard players remove @s juntuancishu 1

