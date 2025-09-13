data merge block 97 228 -23 {back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"dialog show @s kards:setting/random_start/main"},color:"gold",text: "特殊规则"},{bold:true,color:"green",text: "无尽战争"},'']},id:"minecraft:sign",is_waxed:0b}

scoreboard players set #system random_start 5
tellraw @a [{"text":"======","color":"gray"},{"text":"特殊规则","color":"green","bold":true},{"text":"======\n","color":"gray"}]
tellraw @a [{"text":"无尽战争","color":"gold"}]
tellraw @a [{"text":"所有人的","color":"gray"},{"text":"Kmax被设为9999","color":"green",bold:true},{"text":" 每回合额外抽","color":"gray",bold:true},{"text":"3张牌","color":"green",bold:true}]
tellraw @a [{"text":"\n======——-——======\n","color":"gray"}]

execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2