#模板：陷阱
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 at @s run function kards-dlc:kard/type/xianjing/template_xianjing/effect
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 at @s run function kards-dlc:kard/type/xianjing/template_xianjing/effect