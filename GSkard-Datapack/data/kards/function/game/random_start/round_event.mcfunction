#回合轮换之后进行的事件
execute if score #system random_gamerule matches 2 run function kards:game/random_start/event/binggexiangxiang
execute if score #system random_gamerule matches 8 if score 回合数 GameRound = #system RoundCount run function kards:game/random_start/event/rumengyichang
execute if score #system random_gamerule matches 18 run effect give @a instant_health 1 200 true
execute if score #system random_gamerule matches 24 run function kards:game/random_start/event/zainanzhixing
execute if score #system random_gamerule matches 35 if score 回合数 GameRound matches 11.. run function kards:game/random_start/event/sishenjianglin/1
execute if score #system random_gamerule matches 36 run function kards:game/random_start/event/tounaofengbao