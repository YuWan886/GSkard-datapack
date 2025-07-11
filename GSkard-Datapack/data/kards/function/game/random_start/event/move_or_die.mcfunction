execute as @a unless predicate kards:movement_check at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 1
execute as @a unless predicate kards:movement_check run damage @s 2 kards:move_or_die
execute as @a unless predicate kards:movement_check run title @s times 3t 1s 3t
execute as @a unless predicate kards:movement_check run title @s title [{text:"保持移动!",color:"red",bold:true,italic:false}]
execute if score #system random_gamerule matches 25 run schedule function kards:game/random_start/event/move_or_die 1s append
