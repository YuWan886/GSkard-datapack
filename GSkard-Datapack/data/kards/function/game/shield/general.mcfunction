scoreboard players remove @a[scores={shield_hold=1..}] shield_hold 1
scoreboard players set @a[scores={shield_hold=11..}] shield_hold 10
scoreboard players remove @a[scores={diaolingtaidao_hold=1..}] diaolingtaidao_hold 1
scoreboard players set @a[scores={diaolingtaidao_hold=11..}] diaolingtaidao_hold 10
execute as @a if items entity @s weapon.* shield[custom_data={kards:'荆棘盾牌'}] run tag @s add jingjidunpai
execute as @a[tag=jingjidunpai] unless items entity @s weapon.* shield[custom_data={kards:'荆棘盾牌'}] run tag @s remove jingjidunpai
