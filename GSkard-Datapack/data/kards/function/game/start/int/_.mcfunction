function kards:game/start/int/game

function kards:game/start/int/player

function kards:game/start/int/team

# Round
execute if score #system roundtime matches 0 run function kards:game/start/int/round/pvp
execute unless score #system roundtime matches 0 run function kards:game/start/int/round/default
execute if score #system random_start matches 0.. run function kards:game/start/int/round/random