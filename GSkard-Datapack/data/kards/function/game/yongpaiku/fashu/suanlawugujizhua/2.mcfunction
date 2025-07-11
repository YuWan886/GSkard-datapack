advancement revoke @s only kards:eat/suanlawugujizhua
damage @s 10 kards:la
execute if entity @s[team=red] as @r[team=blue,gamemode=adventure] run function kards:game/paiku/yansheng/suanlawugujizhua/1
execute if entity @s[team=blue] as @r[team=red,gamemode=adventure] run function kards:game/paiku/yansheng/suanlawugujizhua/1
tellraw @s [{text:"嗝 有点辣！",color:"red"}]
