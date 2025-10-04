attribute @n minecraft:scale base set 0.01
scoreboard players enable @n Scale

tellraw @s ["",{color:"aqua",text:"[点我重置大小]",click_event:{action:"run_command",command:"/trigger Scale"}}]