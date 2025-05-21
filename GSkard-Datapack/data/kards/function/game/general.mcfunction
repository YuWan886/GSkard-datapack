function kards:game/marker/general
#检测胜利
execute if score #system GameStatus matches 1..2 run function kards:game/end/general
function kards:game/end/wait_end
function kards:game/ingame/general
