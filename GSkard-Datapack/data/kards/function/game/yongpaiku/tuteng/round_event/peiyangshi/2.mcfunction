execute if entity @s[team=red] run tag @r[team=red,gamemode=adventure] add peiyangshi_shidi
execute if entity @s[team=blue] run tag @r[team=blue,gamemode=adventure] add peiyangshi_shidi

execute as @a[tag=peiyangshi_shidi] run function kards:game/paiku/juntuan/shidi
tellraw @a [{text:"培养尸",color:"red"},{text:"进化至",color:"gray"},{text:"[尸帝]",color:"dark_green"},{text:"置入",color:"gray"},{selector:"@a[tag=peiyangshi_shidi]"}]
tag @a[tag=peiyangshi_shidi] remove peiyangshi_shidi

execute at @s run particle instant_effect ~ ~ ~ 0.5 0.5 0.5 0 100 force @a
execute at @s run tp @s ~ -100 ~
kill @s