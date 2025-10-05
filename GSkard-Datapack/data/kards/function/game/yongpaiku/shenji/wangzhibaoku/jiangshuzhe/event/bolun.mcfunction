
tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.bolun.1", fallback: "本回合讲述的故事是...",color: "white"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.bolun.2", fallback: "《驳论》",color: "gold",bold: true}]
tellraw @a {translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.bolun.3", fallback: "这个篇章并不严谨 不合常理才是常理",color: "dark_gray",italic: true}
execute if entity @s[team=red] run scoreboard players set 红队_讲述者 jiangshuzhe_bolun 1
execute if entity @s[team=blue] run scoreboard players set 蓝队_讲述者 jiangshuzhe_bolun 1