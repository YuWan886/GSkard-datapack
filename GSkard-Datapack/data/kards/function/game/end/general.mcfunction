execute if entity @a[team=red,gamemode=adventure] unless entity @a[team=blue,gamemode=adventure] run scoreboard players set system wait_end 41
execute if entity @a[team=blue,gamemode=adventure] unless entity @a[team=red,gamemode=adventure] run scoreboard players set system wait_end 41
execute unless entity @a[team=blue,gamemode=adventure] unless entity @a[team=red,gamemode=adventure] run scoreboard players set system wait_end 41

execute if entity @a[team=red,gamemode=adventure] unless entity @a[team=blue,gamemode=adventure] run scoreboard players set system red_end 1
execute if entity @a[team=blue,gamemode=adventure] unless entity @a[team=red,gamemode=adventure] run scoreboard players set system blue_end 1
execute unless entity @a[team=blue,gamemode=adventure] unless entity @a[team=red,gamemode=adventure] run scoreboard players set system end 1