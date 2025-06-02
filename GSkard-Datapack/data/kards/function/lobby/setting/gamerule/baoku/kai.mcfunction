setblock 97 234 -32 air
setblock 97 234 -32 minecraft:oak_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"/function kards:lobby/setting/gamerule/baoku/guan"},color:"gold",text: "王之宝库开局"},{bold:true,color:"green",text: "开"},'']},id:"minecraft:sign",is_waxed:0b}
scoreboard players set #system bkkj 1
tellraw @a [{bold:true,color:"gold",text: "王之宝库开局已"},{bold:true,color:"green",text: "开启"}]
