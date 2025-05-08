tellraw @a [{translate: "game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.bolun.1",color: "white"},{translate: "game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.bolun.2",color: "gold",bold: true}]
tellraw @a {translate: "game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.bolun.3",color: "dark_gray",italic: true}
execute if entity @s[team=red] run scoreboard players set 红队_讲述者 jiangshuzhe_bolun 1
execute if entity @s[team=blue] run scoreboard players set 蓝队_讲述者 jiangshuzhe_bolun 1