execute if entity @s[team=red] run damage @r[team=blue,gamemode=adventure] 1 kards:lairichanghuan by @a[team=red,limit=1,scores={changhuan=1}]
execute if entity @s[team=blue] run damage @r[team=red,gamemode=adventure] 1 kards:lairichanghuan by @a[team=blue,limit=1,scores={changhuan=1}]
scoreboard players remove @s[scores={damage_jilu=1..}] damage_jilu 10
