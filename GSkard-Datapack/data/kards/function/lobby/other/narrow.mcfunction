attribute @n minecraft:scale base set 0.01
scoreboard players enable @n Scale

tellraw @s ["",{color:"aqua",translate: "kards.function.lobby.other.narrow.1", fallback: "[点我重置大小]",click_event:{action:"run_command",command:"/trigger Scale"}}]