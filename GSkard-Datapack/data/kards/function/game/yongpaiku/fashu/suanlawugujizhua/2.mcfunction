
advancement revoke @s only kards:eat/suanlawugujizhua

scoreboard players add @s HealBack 10
tag @s add suanlawugujizhua
execute if entity @s[team=red] as @r[team=blue,gamemode=adventure] run function kards:game/paiku/yansheng/suanlawugujizhua/1
execute if entity @s[team=blue] as @r[team=red,gamemode=adventure] run function kards:game/paiku/yansheng/suanlawugujizhua/1
tag @s remove suanlawugujizhua

tellraw @s [{text:"皓齿！",color:"green"}]