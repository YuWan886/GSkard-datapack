data merge block 97 228 -23 {back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"dialog show @s kards:setting/random_start/main"},color:"gold",translate: "kards.function.lobby.setting.random_gamerule.guan.1", fallback: "特殊规则"},{bold:true,color:"dark_green",translate: "json.kards.dialog.setting.random_start.main.868", fallback: "舞会"},'']},id:"minecraft:sign",is_waxed:0b}

scoreboard players set #system random_start 12
tellraw @a [{"text":"======","color":"gray"},{"text":"特殊规则","color":"green","bold":true},{"text":"======\n","color":"gray"}]
tellraw @a [{"text":"舞会","color":"gold"}]
tellraw @a [{translate: "json.kards.dialog.setting.random_start.main.858", fallback: "所有人只能抽取到",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.869", fallback: "[舞王僵尸]",color:"dark_green",bold:true}]
tellraw @a [{"text":"\n======——-——======\n","color":"gray"}]

execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2