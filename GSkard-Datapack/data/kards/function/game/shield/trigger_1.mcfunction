advancement revoke @s only kards:shield/jinyong
execute if score @s shield_hold matches 1.. at @s run function kards:game/shield/break
execute if items entity @s weapon.* shield[custom_data={kards:'荆棘盾牌'}] at @s run function kards:game/shield/jingji/1
