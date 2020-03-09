scoreboard players set $install explosivebarrels 1

#print install message
execute if score $install explosivebarrels matches 1 run tellraw @a [{"text":"[Loaded Explosive Barrels]","color":"dark_green"}]