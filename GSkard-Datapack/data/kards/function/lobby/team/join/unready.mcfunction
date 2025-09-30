
tellraw @s [{translate: "kards.function.lobby.team.join.unready.1", fallback: "您还未准备!",color:"red",bold:true}]

execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 1
tp @s 83 226 -26 -90 0