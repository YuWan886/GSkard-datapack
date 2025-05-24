tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《驳论》",color: "gold",bold: true}]
tellraw @a {text: "这个篇章并不严谨 不合常理才是常理",color: "dark_gray",italic: true}
execute if entity @s[team=red] run scoreboard players set 红队_讲述者 jiangshuzhe_bolun 1
execute if entity @s[team=blue] run scoreboard players set 蓝队_讲述者 jiangshuzhe_bolun 1