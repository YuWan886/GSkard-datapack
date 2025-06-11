tellraw @s [{text: "对最近的一个敌方玩家造成25",color:"gray",italic:false},{text: "♥",color:"white",italic:false},{text: "真实伤害",color:"gray",italic:false}]
execute if entity @s[team=red] run damage @p[team=blue,gamemode=adventure] 50 kards:hunduntuteng by @s
execute if entity @s[team=blue] run damage @p[team=red,gamemode=adventure] 50 kards:hunduntuteng by @s