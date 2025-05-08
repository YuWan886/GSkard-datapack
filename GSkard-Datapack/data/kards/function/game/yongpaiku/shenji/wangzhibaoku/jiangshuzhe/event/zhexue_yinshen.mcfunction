tellraw @a [{"text": "本回合讲述的故事是...","color": "white"},{"text": "《哲学》","color": "dark_aqua","bold": true},{"text": "——","color":"white"},{"text": "无视","color": "blue","bold": true},{"text": "   [本回合内 对应生物获得短时隐身]","color": "gray"}]
execute if entity @s[team=red] run scoreboard players set 红队_讲述者 jiangshuzhe_yinshen 1
execute if entity @s[team=blue] run scoreboard players set 蓝队_讲述者 jiangshuzhe_yinshen 1
tellraw @a {"text": "在这个篇章 百家争鸣 各表一枝","color": "dark_gray","italic": true}