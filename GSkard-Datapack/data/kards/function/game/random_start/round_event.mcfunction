#回合轮换之后进行的事件
execute if score #system random_start matches 2 run scoreboard players add @a[scores={CanuseKard=1}] cishu 2
execute if score #system random_start matches 5 run scoreboard players add @a[scores={CanuseKard=1}] cishu 3
execute if score #system random_start matches 9 run function kards:game/random_start/event/zainanzhixing
execute if score #system random_start matches 11 if score 回合数 RoundCount matches 12.. run function kards:game/random_start/event/sishenjianglin/1