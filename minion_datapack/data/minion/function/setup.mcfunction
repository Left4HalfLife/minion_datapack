# as the freshly placed armor stand, at its position
tag @s remove minion_new
tag @s add minion_stand
scoreboard players add $next minion_id 1
scoreboard players operation @s minion_id = $next minion_id

execute store result score @s minion_sx run data get entity @s Pos[0]
execute store result score @s minion_sy run data get entity @s Pos[1]
execute store result score @s minion_sz run data get entity @s Pos[2]

summon minecraft:mannequin ~ ~ ~ {Tags:["minion_mannequin","minion_init"],Invulnerable:1b,NoGravity:1b,immovable:true,hide_description:true,description:""}
summon minecraft:wolf ~ ~ ~ {Tags:["minion_wolf","minion_init"],Invulnerable:1b,Silent:1b,PersistenceRequired:1b}

# The skin comes from the stand's (anvil-renamed) name and is never changed afterwards
data modify entity @e[type=minecraft:mannequin,tag=minion_init,distance=..2,limit=1] profile set from entity @s CustomName
data modify entity @e[type=minecraft:mannequin,tag=minion_init,distance=..2,limit=1] CustomName set from entity @s CustomName
data modify entity @e[type=minecraft:wolf,tag=minion_init,distance=..2,limit=1] Owner set from storage minion:tmp owner
effect give @e[type=minecraft:wolf,tag=minion_init,distance=..2,limit=1] minecraft:invisibility infinite 0 true

scoreboard players operation @e[tag=minion_init,distance=..2] minion_id = @s minion_id
scoreboard players operation @e[type=minecraft:wolf,tag=minion_init,distance=..2] minion_sx = @s minion_sx
scoreboard players operation @e[type=minecraft:wolf,tag=minion_init,distance=..2] minion_sy = @s minion_sy
scoreboard players operation @e[type=minecraft:wolf,tag=minion_init,distance=..2] minion_sz = @s minion_sz
tag @e[tag=minion_init,distance=..2] remove minion_init
