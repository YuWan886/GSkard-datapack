execute on attacker if score @s enchantment_linghundaji_damage_Time matches 1.. run return fail
tag @s add enchantment_linghundaji
execute on attacker run tag @s add enchantment_linghundaji_attacker
#灵魂打击伤害为实体当前最大生命值的1%的真实伤害
execute store result storage linghundaji damage double 0.01 run attribute @s max_health get
function kards:enchantment/linghundaji/2 with storage linghundaji
tag @s remove enchantment_linghundaji
execute on attacker run tag @s remove enchantment_linghundaji_attacker
execute on attacker run scoreboard players set @s enchantment_linghundaji_damage_Time 25
advancement revoke @s only kards:shenqi/tianshenshibanjia/enchantment/linghundaji
