tag @s remove kutongzhuanhuan

#0.75*伤害 目前
scoreboard players operation @s damage_kutongzhuanhua = @s behurt_kunanyaolan2
scoreboard players set #system damage_kutongzhuanhua 75
scoreboard players operation @s damage_kutongzhuanhua *= #system damage_kutongzhuanhua
scoreboard players set #system damage_kutongzhuanhua 1000
scoreboard players operation @s damage_kutongzhuanhua /= #system damage_kutongzhuanhua

#0.65*回血 目前
scoreboard players operation @s HealBack = @s behurt_kunanyaolan2
scoreboard players set #system HealBack 65
scoreboard players operation @s HealBack *= #system HealBack
scoreboard players set #system HealBack 1000
scoreboard players operation @s HealBack /= #system HealBack

#0.2*真伤
scoreboard players operation @s damage_kutongzhuanhua_zhenshi = @s damage_kutongzhuanhua
scoreboard players set #system damage_kutongzhuanhua_zhenshi 50
scoreboard players operation @s damage_kutongzhuanhua_zhenshi /= #system damage_kutongzhuanhua_zhenshi

#0.6*物伤
scoreboard players operation @s damage_kutongzhuanhua_wuli = @s damage_kutongzhuanhua
scoreboard players set #system damage_kutongzhuanhua_wuli 60
scoreboard players operation @s damage_kutongzhuanhua_wuli *= #system damage_kutongzhuanhua_wuli
scoreboard players set #system damage_kutongzhuanhua_wuli 100
scoreboard players operation @s damage_kutongzhuanhua_wuli /= #system damage_kutongzhuanhua_wuli


scoreboard players set #system damage_kutongzhuanhua 2
scoreboard players operation @s damage_kutongzhuanhua /= #system damage_kutongzhuanhua
tellraw @s [{text:"[!]]",color:"yellow"},{text:"苦痛转化触发 对周围敌对生物造成",color:"red"},{score:{name:"@s",objective:"damage_kutongzhuanhua"}},{text:"♥总伤害",color:"red"}]
scoreboard players operation @s damage_kutongzhuanhua *= #system damage_kutongzhuanhua

execute at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/4