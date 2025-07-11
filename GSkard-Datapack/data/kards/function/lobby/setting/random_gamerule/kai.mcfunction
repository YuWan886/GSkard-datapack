setblock 97 228 -23 air
setblock 97 228 -23 minecraft:oak_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"function kards:lobby/setting/random_gamerule/guan"},color:"gold",text: "随机规则"},{bold:true,color:"green",text: "开"},'']},id:"minecraft:sign",is_waxed:0b}
scoreboard players set #system random_gamerule 0
tellraw @a [{bold:true,color:"gold",text: "随机规则"},{bold:true,color:"green",text: "开启"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
