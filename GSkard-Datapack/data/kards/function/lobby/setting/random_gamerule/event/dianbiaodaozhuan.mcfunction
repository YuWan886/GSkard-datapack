data merge block 97 228 -23 {back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"dialog show @s kards:setting/random_start/main"},color:"gold",translate: "kards.function.lobby.setting.random_gamerule.guan.1", fallback: "特殊规则"},{bold:true,color:"light_purple",translate: "json.kards.dialog.setting.random_start.main.870", fallback: "电表倒转"},'']},id:"minecraft:sign",is_waxed:0b}

scoreboard players set #system random_start 13
tellraw @a [{"text":"======","color":"gray"},{"text":"特殊规则","color":"green","bold":true},{"text":"======\n","color":"gray"}]
tellraw @a [{"text":"电表倒转","color":"gold"}]
tellraw @a [{translate: "json.kards.dialog.setting.random_start.main.871", fallback: "每使用1张牌 都有概率额外获得",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.872", fallback: "[春暖花开]",color:"light_purple",bold:true},{translate: "json.kards.dialog.setting.random_start.main.873", fallback: "[好高骛远]",color:"white",bold:true},{translate: "json.kards.dialog.setting.random_start.main.874", fallback: "6K",color:"gold",bold:true}]
tellraw @a [{"text":"\n======——-——======\n","color":"gray"}]

execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2