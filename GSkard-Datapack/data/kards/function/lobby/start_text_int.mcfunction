kill @e[tag=start]
summon minecraft:text_display 104 227.5 -26 {billboard:fixed,text:{translate: "kards.function.lobby.start_text_int.1", fallback: "开始游戏",color:"gold"},Rotation:[90f,0f],Tags:["start"]}
summon minecraft:interaction 104 227 -26 {response:1b,Tags:["start"]}
