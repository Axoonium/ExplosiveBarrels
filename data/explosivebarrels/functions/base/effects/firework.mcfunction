# Swap values for 2 and 3 so that 2 can be used for if both slots have fireworks
execute if score $temp_1 explosivebarrels matches 2..3 run scoreboard players add $temp_1 explosivebarrels 1
execute if score $temp_1 explosivebarrels matches 4 run scoreboard players set $temp_1 explosivebarrels 2

# Lifetime multiplier
scoreboard players set $temp_3 explosivebarrels 10

# Primary firework setup
execute if score $temp_1 explosivebarrels matches 1..2 run summon firework_rocket ~ ~ ~ {Tags:[explosivebarrel_0]}
execute if score $temp_1 explosivebarrels matches 1..2 store result score $temp_2 explosivebarrels run data get block ~ ~1 ~ Items[{Slot:4b}].tag.Fireworks.Flight
execute if score $temp_1 explosivebarrels matches 1..2 run scoreboard players add $temp_2 explosivebarrels 1
execute if score $temp_1 explosivebarrels matches 1..2 run scoreboard players operation $temp_2 explosivebarrels *= $temp_3 explosivebarrels
execute if score $temp_1 explosivebarrels matches 1..2 run scoreboard players add $temp_2 explosivebarrels 6
execute if score $temp_1 explosivebarrels matches 1..2 store result entity @e[type=firework_rocket,tag=explosivebarrel_0,limit=1,sort=nearest] LifeTime int 1 run scoreboard players get $temp_2 explosivebarrels

# Primary firework effects
execute if score $temp_1 explosivebarrels matches 1..2 run data modify entity @e[type=firework_rocket,tag=explosivebarrel_0,limit=1,sort=nearest] FireworksItem set from block ~ ~1 ~ Items[{Slot:4b}]

# Secondary firework setup
execute if score $temp_1 explosivebarrels matches 2..3 run summon firework_rocket ~ ~ ~ {Tags:[explosivebarrel_1]}
execute if score $temp_1 explosivebarrels matches 2..3 store result score $temp_2 explosivebarrels run data get block ~ ~1 ~ Items[{Slot:22b}].tag.Fireworks.Flight
execute if score $temp_1 explosivebarrels matches 2..3 run scoreboard players add $temp_2 explosivebarrels 1
execute if score $temp_1 explosivebarrels matches 2..3 run scoreboard players operation $temp_2 explosivebarrels *= $temp_3 explosivebarrels
execute if score $temp_1 explosivebarrels matches 2..3 run scoreboard players add $temp_2 explosivebarrels 6
execute if score $temp_1 explosivebarrels matches 2..3 store result entity @e[type=firework_rocket,tag=explosivebarrel_1,limit=1,sort=nearest] LifeTime int 1 run scoreboard players get $temp_2 explosivebarrels

# Secondary firework effects
execute if score $temp_1 explosivebarrels matches 2..3 run data modify entity @e[type=firework_rocket,tag=explosivebarrel_1,limit=1,sort=nearest] FireworksItem set from block ~ ~1 ~ Items[{Slot:22b}]