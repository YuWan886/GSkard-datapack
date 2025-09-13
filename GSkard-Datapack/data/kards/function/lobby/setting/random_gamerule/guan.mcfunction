data merge block 97 228 -23 {back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"dialog show @s kards:setting/random_start/main"},color:"gold",text: "特殊规则"},{bold:true,color:"red",text: "关"},'']},id:"minecraft:sign",is_waxed:0b}

scoreboard players set #system random_start -1
tellraw @a [{bold:true,color:"gold",text: "特殊规则"},{bold:true,color:"red",text: "关闭"}]

execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2

