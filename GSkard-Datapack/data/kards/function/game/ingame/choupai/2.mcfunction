execute as @s store result score @s random2 run random value 1..275
execute as @s if score @s random2 matches 1..20 run function kards:game/paiku/juntuan/xingshizourou
execute as @s if score @s random2 matches 21..25 run function kards:game/paiku/juntuan/errenchengjun
execute as @s if score @s random2 matches 26..40 run function kards:game/paiku/juntuan/jieluexiaodui
execute as @s if score @s random2 matches 41..55 run function kards:game/paiku/juntuan/wanglingdajun
execute as @s if score @s random2 matches 56..70 run function kards:game/paiku/juntuan/diyuzhihuo
execute as @s if score @s random2 matches 71..80 run function kards:game/paiku/juntuan/baozhajuntuan
execute as @s if score @s random2 matches 81..90 run function kards:game/paiku/juntuan/mengduzhuaya
execute as @s if score @s random2 matches 91..97 run function kards:game/paiku/juntuan/shenghaikongju
execute as @s if score @s random2 matches 98..100 run function kards:game/paiku/juntuan/morilailin
execute as @s if score @s random2 matches 101..105 run function kards:game/paiku/juntuan/zaieshuangxing
execute as @s if score @s random2 matches 106..115 run function kards:game/paiku/juntuan/wufalianhui
execute as @s if score @s random2 matches 116..125 run function kards:game/paiku/juntuan/chongzai
execute as @s if score @s random2 matches 126..135 run function kards:game/paiku/juntuan/xiaozhukuaipao
execute as @s if score @s random2 matches 136..145 run function kards:game/paiku/juntuan/shashouxiaodui
execute as @s if score @s random2 matches 146..160 run function kards:game/paiku/juntuan/xiajieruqing
execute as @s if score @s random2 matches 161..180 run function kards:game/paiku/juntuan/jufengguojing
execute as @s if score @s random2 matches 181..200 run function kards:game/paiku/juntuan/sheshoubudui
execute as @s if score @s random2 matches 201..220 run function kards:game/paiku/juntuan/fengyongerzhi
execute as @s if score @s random2 matches 221..230 run function kards:game/paiku/juntuan/shixuelangqun
execute as @s if score @s random2 matches 231..240 run function kards:game/paiku/juntuan/wurenjiqun
execute as @s if score @s random2 matches 241..245 run function kards:game/paiku/juntuan/wojilangchao
execute as @s if score @s random2 matches 246..260 run function kards:game/paiku/juntuan/silingwushi
execute as @s if score @s random2 matches 261..275 run function kards:game/paiku/juntuan/xiaoguidangjia
scoreboard players set @s random2 0
scoreboard players remove @s juntuancishu 1