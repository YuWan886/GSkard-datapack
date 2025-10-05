data merge block 97 228 -23 {back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"dialog show @s kards:setting/random_start/main"},color:"gold",translate: "kards.function.lobby.setting.random_gamerule.guan.1", fallback: "特殊规则"},{bold:true,color:"gray",translate: "json.kards.dialog.setting.random_start.main.1283", fallback: "灾难之星"},'']},id:"minecraft:sign",is_waxed:0b}

scoreboard players set #system random_start 9
tellraw @a [{"text":"======","color":"gray"},{"text":"特殊规则","color":"green","bold":true},{"text":"======\n","color":"gray"}]
tellraw @a [{"text":"灾难之星","color":"gold"}]
tellraw @a [{"text":"讲述[河豚][雷暴][失重]的故事","color":"gray"}]
tellraw @a [{"text":"\n======——-——======\n","color":"gray"}]

execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2