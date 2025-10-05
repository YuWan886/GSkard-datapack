scoreboard players add @s YongHan 1
execute as @a if items entity @s armor.* *[enchantments~[{enchantments:'kards:yonghanzhihu',levels:1}]] run tag @s add enchantment_yonghanzhihu
damage @s 2 freeze by @n[tag=enchantment_yonghanzhihu,distance=0.1..]
tag @a[tag=enchantment_yonghanzhihu] remove enchantment_yonghanzhihu
particle snowflake ~ ~1 ~ 0.5 0 0.5 0.2 3