execute as @a[tag=Talent_ranjiweiguang,team=red] at @s run particle dust_color_transition{from_color:[0.98, 0.02, 0.02], scale: 1.0, to_color:[0.98, 0.02, 0.02]} ~ ~ ~ 0 5 0 0 30 force @a
execute as @a[tag=Talent_ranjiweiguang,team=blue] at @s run particle dust_color_transition{from_color:[0.03, 0.11, 0.71], scale: 1.0, to_color:[0.03, 0.11, 0.71]} ~ ~ ~ 0 5 0 0 30 force @a

schedule function kards:game/player/talent/enable/ranjiweiguang/5 0.5s