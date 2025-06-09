execute if score #system dituxuanze matches 1 run clone 5 -60 -71 13 -47 -63 76 226 -45
execute if score #system dituxuanze matches 2 run clone 17 -60 -71 25 -47 -63 76 226 -45
execute if score #system dituxuanze matches 3 run clone 29 -60 -71 37 -47 -63 76 226 -45
execute if score #system dituxuanze matches 4 run clone 41 -60 -71 49 -47 -63 76 226 -45
execute if score #system dituxuanze matches 5 run clone 53 -60 -71 61 -47 -63 76 226 -45
execute if score #system dituxuanze matches 6 run clone 65 -60 -71 73 -47 -63 76 226 -45
execute if score #system dituxuanze matches 7 run clone 77 -60 -71 85 -47 -63 76 226 -45
execute if score #system dituxuanze matches 8 run clone 89 -60 -71 97 -47 -63 76 226 -45
execute if score #system dituxuanze matches 9 run clone 113 -60 -71 121 -47 -63 76 226 -45

execute if score #system dituxuanze matches 101 run clone 101 -60 -71 109 -47 -63 76 226 -45


execute unless entity @e[type=block_display,tag=map] run summon block_display 83 228.2 -35 {block_state:{Name:"minecraft:crying_obsidian"},Tags:["map","spawn"]}
data modify entity @e[tag=map,type=block_display,limit=1] transformation.left_rotation set value {angle:54.74f,axis:[-1.0f,0.0f,1.0f]}
data modify entity @e[tag=map,type=block_display,limit=1] transformation.scale set value [0.6f,0.6f,0.6f]
data modify entity @e[tag=map,type=block_display,limit=1] start_interpolation set value 0
data modify entity @e[tag=map,type=block_display,limit=1] interpolation_duration set value 20


execute unless entity @e[type=interaction,tag=map] run summon minecraft:interaction 83 227.2 -35 {response:1b,Tags:["map"]}

execute unless entity @e[type=text_display,tag=map] run summon minecraft:text_display 83 226.7 -35 {billboard:vertical,text: '§6点我切换至下一张地图',Tags:["map"]}

execute store result score #system MapCount if entity @e[distance=1..,tag=map]
execute unless score #system MapCount matches 3 run kill @e[tag=map]