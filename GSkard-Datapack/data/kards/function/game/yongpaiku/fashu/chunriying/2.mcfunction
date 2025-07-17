tp @s ~ 5 ~
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[2f,0f,0f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Glowing:1b,block_state:{Name:note_block},Tags:["droll"]}
scoreboard players set @s lifetime 285
stopsound @a block
playsound minecraft:chunriying block @a ~ ~ ~ 0.75 1 0.75