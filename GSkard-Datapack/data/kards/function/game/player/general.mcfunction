#弩
execute as @a[scores={UseItem.Crossbow=1..}] run function kards:game/player/crossbow/1
execute as @a if items entity @s weapon.* crossbow run function kards:game/player/crossbow/2