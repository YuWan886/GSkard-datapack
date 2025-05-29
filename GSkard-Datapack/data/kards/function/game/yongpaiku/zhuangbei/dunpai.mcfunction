#懒得重写图案了 以前做的图案网站也不记得了 于是用的item replace from block
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[盾牌]",color:"gold"}]
#item replace entity @s weapon.offhand from block 7 -60 -48 container.8
item replace entity @s weapon.offhand with minecraft:shield[blocks_attacks={"block_delay_seconds":0,"disable_cooldown_scale":2,"damage_reductions": [{"base": 0,"factor": 0.8,"horizontal_blocking_angle": 90}]},unbreakable={},banner_patterns=[{pattern:"base",color:"white"},{pattern:"flower",color:"black"},{pattern:"border",color:"black"}],custom_data={kards:'盾牌'},max_stack_size=1,tooltip_display={hidden_components:["unbreakable"]}]
scoreboard players operation @s kardCount -= #kard_dunpai kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1