execute as @s[advancements={kards:chengjiu/jiaocheng=true}] if score #system GameStatus matches 0 run return run function kards:leave_game/not_ingame
execute as @s[advancements={kards:chengjiu/laodeng=true}] if score #system GameStatus matches 0 run return run function kards:leave_game/not_ingame
execute as @s[advancements={kards:chengjiu/jiaocheng=false,kards:chengjiu/laodeng=false}] if score #system GameStatus matches 0 run return run function kards:chengjiu/first_join_game
execute as @s[team=!red,team=!blue] unless score #system GameStatus matches 0 run return run function kards:leave_game/sp
execute as @s[team=red] unless score #system GameStatus matches 0 run return run function kards:leave_game/ingame
execute as @s[team=blue] unless score #system GameStatus matches 0 run return run function kards:leave_game/ingame
