scoreboard players set system kardCountmax 8
tellraw @a [{text: "提示:",color: "gold"},{text: "每回合Kmax增加变为",color: "green"},{text: "8",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -5 air
setblock 61 226 -5 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/kmax/9"},color:"gold",text:"每回合Kmax增加"},{text:"8",color:"green"},"",""]}} replace