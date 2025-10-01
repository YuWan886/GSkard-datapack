scoreboard players set #system RoundCount -1
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.roundcount.infinity.1", fallback: "PVP回合禁用 游戏最大回合不限",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "kards.function.lobby.setting.pvpround.open.2", fallback: "PVP回合设置为"},{translate: "json.kards.dialog.setting.random_start.main.1301", fallback: "禁用",color:"red"},{translate: "kards.function.lobby.setting.roundcount.infinity.2", fallback: "游戏最大回合不限",color:"red"},'']}} destroy
scoreboard players set #system DifficultyRound -1
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvpround.open.5", fallback: "困难模式回合设置为",color: "green"},{translate: "kards.function.lobby.setting.roundcount.infinity.3", fallback: " 关",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "kards.function.lobby.setting.pvpround.open.7", fallback: "困难模式回合"},{translate: "kards.function.lobby.setting.random_gamerule.guan.2", fallback: "关",color:"green"},{translate: "kards.function.lobby.setting.pvpround.open.9", fallback: "不可手动调整",color:"gray"},'']}} destroy

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]
