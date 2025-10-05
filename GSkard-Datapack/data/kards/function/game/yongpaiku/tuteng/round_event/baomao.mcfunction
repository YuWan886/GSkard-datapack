
execute if entity @s[team=red] run tag @e[team=blue,tag=tuteng,limit=1,sort=random] add baomao_damage
execute if entity @s[team=blue] run tag @e[team=red,tag=tuteng,limit=1,sort=random] add baomao_damage

execute if entity @s[team=red] if entity @e[team=blue,tag=tuteng] run tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.baomao.1", fallback: "咬了一口",color:"gray"},{selector:"@e[tag=baomao_damage]"}]
execute if entity @s[team=blue] if entity @e[team=red,tag=tuteng] run tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.baomao.1", fallback: "咬了一口",color:"gray"},{selector:"@e[tag=baomao_damage]"}]

execute if entity @s[team=red] unless entity @e[team=blue,tag=tuteng] run tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.baomao.1", fallback: "咬了一口",color:"gray"},{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.1", fallback: "滚木",color:"gold"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.baomao.2", fallback: "!",color:"gray"}]
execute if entity @s[team=blue] unless entity @e[team=red,tag=tuteng] run tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.baomao.1", fallback: "咬了一口",color:"gray"},{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.1", fallback: "滚木",color:"gold"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.baomao.2", fallback: "!",color:"gray"}]

execute as @e[tag=baomao_damage,limit=1] store result score @s tuteng_Health run data get entity @s Health
execute as @e[tag=baomao_damage,limit=1] if score @s tuteng_Health matches ..8 run tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.baomao.3", fallback: "被咬死了",color:"gray"}]
execute as @e[tag=baomao_damage,limit=1] if score @s tuteng_Health matches ..8 at @s run playsound minecraft:wilhelm_scream player @a ~ ~ ~ 100 1

execute if entity @s[team=red] run damage @e[team=blue,tag=baomao_damage,limit=1] 8 kards:baomao by @s
execute if entity @s[team=blue] run damage @e[team=red,tag=baomao_damage,limit=1] 8 kards:baomao by @s

tag @e[tag=baomao_damage] remove baomao_damage