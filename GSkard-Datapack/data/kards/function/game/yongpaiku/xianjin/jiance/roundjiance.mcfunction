#此mcfunction为回合判定后触发
#要检测是谁的回合 通过虚拟实体#system的分数GameRound判断
#> 0为蓝队回合 
#> 1为红队回合

#侦测贝
#execute if score #system GameRound matches 1 if entity @e[tag=tuteng,team=red,type=shulker] run return run damage @n[tag=tuteng,team=red,type=shulker] 2 out_of_world
#execute if score #system GameRound matches 0 if entity @e[tag=tuteng,team=blue,type=shulker] run return run damage @n[tag=tuteng,team=blue,type=shulker] 2 out_of_world

#<遥远的桥>
execute if score #system GameRound matches 1 if score 红队 xianjin_yaoyuandeqiao matches 1 run function kards:game/yongpaiku/xianjin/chufa/round/red/yaoyuandeqiao
execute if score #system GameRound matches 0 if score 蓝队 xianjin_yaoyuandeqiao matches 1 run function kards:game/yongpaiku/xianjin/chufa/round/blue/yaoyuandeqiao

#<轻虑浅谋>
execute if score #system GameRound matches 0 if score 红队 xianjin_qinglvqianmou matches 1 run function kards:game/yongpaiku/xianjin/chufa/round/red/qinglvqianmou
execute if score #system GameRound matches 1 if score 蓝队 xianjin_qinglvqianmou matches 1 run function kards:game/yongpaiku/xianjin/chufa/round/blue/qinglvqianmou
