execute if entity @s[team=red] run damage @r[team=blue,gamemode=adventure] 40 kards:hunduntuteng
execute if entity @s[team=blue] run damage @r[team=red,gamemode=adventure] 40 kards:hunduntuteng
tellraw @s {text: "混沌图腾炸开了！随机对一个敌方玩家造成20♥伤害",color: "dark_gray"}