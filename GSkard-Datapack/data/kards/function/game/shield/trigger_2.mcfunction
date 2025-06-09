advancement revoke @s only kards:shield/jinyong2
execute if score @s diaolingtaidao_hold matches 1.. at @s run function kards:game/shield/break
execute if items entity @s weapon.mainhand netherite_sword[custom_data={kards:'凋零太刀'}] unless items entity @s weapon.offhand * at @s run return run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/4
execute if items entity @s weapon.offhand netherite_sword[custom_data={kards:'凋零太刀'}] unless items entity @s weapon.mainhand * at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/4
