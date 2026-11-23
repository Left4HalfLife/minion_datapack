# as the wolf, at the wolf; wolf, mannequin and stand are tagged minion_cur
tp @e[type=minecraft:mannequin,tag=minion_cur] ~ ~ ~
rotate @e[type=minecraft:mannequin,tag=minion_cur] as @s
rotate @e[type=minecraft:mannequin,tag=minion_cur] ~ 0

item replace entity @e[type=minecraft:mannequin,tag=minion_cur,limit=1] armor.head from entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] armor.head
item replace entity @e[type=minecraft:mannequin,tag=minion_cur,limit=1] armor.chest from entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] armor.chest
item replace entity @e[type=minecraft:mannequin,tag=minion_cur,limit=1] armor.legs from entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] armor.legs
item replace entity @e[type=minecraft:mannequin,tag=minion_cur,limit=1] armor.feet from entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] armor.feet
item replace entity @e[type=minecraft:mannequin,tag=minion_cur,limit=1] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] weapon.mainhand
item replace entity @e[type=minecraft:mannequin,tag=minion_cur,limit=1] weapon.offhand from entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] weapon.offhand

# Name tags rename the mannequin but never touch its skin
data modify entity @e[type=minecraft:mannequin,tag=minion_cur,limit=1] CustomName set from entity @e[type=minecraft:armor_stand,tag=minion_cur,limit=1] CustomName
