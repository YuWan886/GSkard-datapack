tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《灾难》",color: "dark_red",bold: true},{text: "——",color:"white"},{text: "畸形",color: "blue",bold: true},{text: "   [本回合内 对应队伍非玩家生物会缩小]",color: "gray"}]
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] run scoreboard players set 蓝队_讲述者 jiangshuzhe_jixing 1
execute if entity @s[team=blue] run scoreboard players set 红队_讲述者 jiangshuzhe_jixing 1
tellraw @a {text: "在这个篇章 灾难席卷 人们艰难求生",color: "dark_gray",italic: true}