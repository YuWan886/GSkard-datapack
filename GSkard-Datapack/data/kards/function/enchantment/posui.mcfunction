tag @s add enchantment_posui
#对同一个敌人造成伤害时使其护甲韧性与护甲值-35% 3s
tag @s add PoSui
scoreboard players set @s PoSui 60
attribute @s armor modifier add 0-0-2 -0.35 add_multiplied_total
attribute @s armor_toughness modifier add 0-0-2 -0.35 add_multiplied_total
tag @s remove enchantment_posui
