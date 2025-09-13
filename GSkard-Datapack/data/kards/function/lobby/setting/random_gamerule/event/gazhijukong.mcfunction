data merge block 97 228 -23 {back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"dialog show @s kards:setting/random_start/main"},color:"gold",text: "特殊规则"},{bold:true,color:"red",text: "嘎吱恐惧"},'']},id:"minecraft:sign",is_waxed:0b}

scoreboard players set #system random_start 6
tellraw @a [{"text":"======","color":"gray"},{"text":"特殊规则","color":"green","bold":true},{"text":"======\n","color":"gray"}]
tellraw @a [{"text":"嘎吱恐惧","color":"gold"}]
tellraw @a [{"text":"两方场地中央生成一只移速增加的嘎吱怪","color":"red",bold:true}]
tellraw @a [{"text":"\n======——-——======\n","color":"gray"}]

execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2