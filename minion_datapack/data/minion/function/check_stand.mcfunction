# The stand is missing: only treat it as destroyed if its chunk is actually loaded
execute store result storage minion:tmp x int 1 run scoreboard players get @s minion_sx
execute store result storage minion:tmp y int 1 run scoreboard players get @s minion_sy
execute store result storage minion:tmp z int 1 run scoreboard players get @s minion_sz
function minion:check_loaded with storage minion:tmp
