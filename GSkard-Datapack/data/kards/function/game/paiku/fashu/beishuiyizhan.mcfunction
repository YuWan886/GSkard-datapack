scoreboard players set #kard_beishuiyizhan kardCount 5
give @s music_disc_mellohi[item_name=[{translate: "game.paiku.fashu.beishuiyizhan.1",color:"aqua"},{translate: "game.paiku.fashu.beishuiyizhan.2",color:"light_purple"}],lore=[{translate: "game.paiku.fashu.beishuiyizhan.3",color:"light_purple",italic:false},{translate: "game.paiku.fashu.beishuiyizhan.4",color:"gray",italic:false},{translate: "game.paiku.fashu.beishuiyizhan.5",color:"gray",italic:false},{translate: "game.paiku.fashu.beishuiyizhan.6",color:"dark_gray",italic:true}],jukebox_playable="minecraft:pigstep",tooltip_display={hidden_components:["jukebox_playable"]},custom_data={kards:'背水一战'}]

#kards:game/ingame/use_kard/fashu
#execute if items entity @s weapon.offhand minecraft:music_disc_mellohi[custom_data={kards:'背水一战'}] if score @s kardCount >= #kard_beishuiyizhan kardCount run return run function kards:game/yongpaiku/fashu/beishuiyizhan

#> yongpaiku/fashu/beishuiyizhan
#scoreboard players operation @s kardCount -= #kard_beishuiyizhan kardCount

