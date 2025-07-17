scoreboard players remove @s kunanyaolan_damage 1
damage @a[team=blue,limit=1,sort=random] 1 kards:kunanyaolan by @s[team=red]
damage @a[team=red,limit=1,sort=random] 1 kards:kunanyaolan by @s[team=blue]
execute if score @s kunanyaolan_damage matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/damage