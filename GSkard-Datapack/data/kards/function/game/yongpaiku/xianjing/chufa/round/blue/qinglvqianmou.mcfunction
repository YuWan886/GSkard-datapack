scoreboard players reset 蓝队 xianjin_qinglvqianmou
execute as @a[team=blue,gamemode=adventure] run scoreboard players operation @s qinglvqianmou = @s use_kard
scoreboard players reset @a[team=blue] use_kard 
execute as @a[team=blue,gamemode=adventure] run function kards:game/yongpaiku/xianjing/chufa/qinglvqianmou
tellraw @a [{text: "蓝队",color: "blue"},{text: "触发了",color: "gray"},{text: "<轻虑浅谋>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时让触发者队伍所有玩家扣除等同于本回合内使用卡牌数量的血量"}}]
execute as @a at @s run playsound minecraft:dogdoing master @s ~ ~ ~ 1 1
