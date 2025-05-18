execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.fashu.wuyong.1",color:"dark_purple",hover_event:{action:"show_text","value":"获得三张无用的牌"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuyong kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0


give @s music_disc_mellohi[item_name=[{translate: "game.paiku.fashu.chongzhu.1",color:"aqua"},{translate: "game.yongpaiku.fashu.wuyong.2",color:"light_purple"}],lore=[{translate: "game.paiku.fashu.diyu.3",color:"light_purple",italic:false},{translate: "game.yongpaiku.fashu.wuyong.3",color:"gray",italic:false},{translate: "game.paiku.fashu.wuyong.3",color:"gray",italic:false}],jukebox_playable="minecraft:pigstep",tooltip_display={hidden_components:["jukebox_playable"]},custom_data={kards:'无用•法'}]
give @s music_disc_strad[item_name=[{translate: "game.paiku.fashu.duming.1",color:"aqua"},{translate: "game.yongpaiku.fashu.wuyong.4",color:"white"}],lore=[{translate: "game.paiku.shenji.fanxiangfeileishen.2",color:"white",italic:false},[{translate: "game.yongpaiku.fashu.wuyong.3",color:"gray",italic:false},{translate: "game.paiku.fashu.wuyong.3",color:"gold",italic:false}]],jukebox_playable="minecraft:pigstep",tooltip_display={hidden_components:["jukebox_playable"]},custom_data={kards:'无用•神'}]
give @s music_disc_mall[item_name=[{translate: "game.paiku.fashu.guohechaiqiao.1",color:"aqua"},{translate: "game.yongpaiku.fashu.wuyong.5",color:"blue"}],lore=[{translate: "game.paiku.jiben.yuangushouweizhe.2",color:"blue",italic:false},[{translate: "game.yongpaiku.fashu.wuyong.3",color:"gray",italic:false},{translate: "game.paiku.fashu.wuyong.3",color:"gold",italic:false}]],jukebox_playable="minecraft:pigstep",tooltip_display={hidden_components:["jukebox_playable"]},custom_data={kards:'无用•基'}]