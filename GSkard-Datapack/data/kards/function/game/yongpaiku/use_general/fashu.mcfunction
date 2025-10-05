execute if score #system random_start matches 3 as @s[team=red] run damage @r[team=blue,gamemode=adventure] 10 magic by @s
execute if score #system random_start matches 3 as @s[team=blue] run damage @r[team=red,gamemode=adventure] 10 magic by @s
scoreboard players add @s[scores={ChaoPin=1}] kardCountmax 1