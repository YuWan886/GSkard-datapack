
$execute if entity @s[team=red] run fill $(b_posx) 0 $(b_posz) $(b_posdx) 1 $(b_posdz) water replace air
$execute if entity @s[team=blue] run fill $(r_posx) 0 $(r_posz) $(r_posdx) 1 $(r_posdz) water replace air

title @s times 10t 2s 10t
execute if entity @s[team=red] run title @a title [{text:"[漫水]",color:"light_purple"},{text:"作用至",color:"gray"},{text:"蓝队",color:"blue"}]
execute if entity @s[team=blue] run title @a title [{text:"[漫水]",color:"light_purple"},{text:"作用至",color:"gray"},{text:"红队",color:"red"}]
title @a subtitle [{text:"持续至回合结束",color:"gray"}]