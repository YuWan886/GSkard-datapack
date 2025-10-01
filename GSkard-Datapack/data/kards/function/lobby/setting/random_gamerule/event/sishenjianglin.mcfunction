data merge block 97 228 -23 {back_text:{color:"black",has_glowing_text:0b,messages:['','','','']},front_text:{color:"black",has_glowing_text:0b,messages:['',{bold:true,click_event:{action:"run_command",command:"dialog show @s kards:setting/random_start/main"},color:"gold",translate: "kards.function.lobby.setting.random_gamerule.guan.1", fallback: "特殊规则"},{bold:true,color:"red",translate: "json.kards.dialog.setting.random_start.main.1289", fallback: "死神降临"},'']},id:"minecraft:sign",is_waxed:0b}

scoreboard players set #system random_start 11
tellraw @a [{"text":"======","color":"gray"},{"text":"特殊规则","color":"green","bold":true},{"text":"======\n","color":"gray"}]
tellraw @a [{"text":"死神降临","color":"gold"}]
tellraw @a [{"text":"11回合后 每回合杀死一个生命最低的玩家","color":"red",bold:true}]
tellraw @a [{"text":"\n======——-——======\n","color":"gray"}]

execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2