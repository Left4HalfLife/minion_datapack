advancement revoke @s only minion:placed
data modify storage minion:tmp owner set from entity @s UUID
execute at @s as @e[type=armor_stand,tag=minion_new,distance=..12,sort=nearest,limit=1] at @s run function minion:setup
