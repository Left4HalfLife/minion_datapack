# as the minion wolf, at the wolf
scoreboard players operation $cur minion_id = @s minion_id
tag @s add minion_cur
execute as @e[type=minecraft:mannequin,tag=minion_mannequin] if score @s minion_id = $cur minion_id run tag @s add minion_cur
execute as @e[type=minecraft:armor_stand,tag=minion_stand] if score @s minion_id = $cur minion_id run tag @s add minion_cur

execute if entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] run function minion:update
execute unless entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] run function minion:check_stand

tag @e[tag=minion_cur] remove minion_cur
