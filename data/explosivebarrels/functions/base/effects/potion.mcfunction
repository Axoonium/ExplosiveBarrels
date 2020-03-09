# Swap values for 2 and 3 so that 2 can be used for if both slots have potions
execute if score $temp_1 explosivebarrels matches 2..3 run scoreboard players add $temp_1 explosivebarrels 1
execute if score $temp_1 explosivebarrels matches 4 run scoreboard players set $temp_1 explosivebarrels 2

# Primary cloud setup
execute if score $temp_1 explosivebarrels matches 1..2 run summon area_effect_cloud ~ ~ ~ {Tags:[explosivebarrel_0],Duration:10}
execute if score $temp_1 explosivebarrels matches 1..2 store result entity @e[type=area_effect_cloud,tag=explosivebarrel_0,limit=1,sort=nearest] Radius float 1 run scoreboard players get $temp_0 explosivebarrels

# Primary cloud effects
execute if score $temp_1 explosivebarrels matches 1..2 run data modify entity @e[type=area_effect_cloud,tag=explosivebarrel_0,limit=1,sort=nearest] Potion set from block ~ ~1 ~ Items[{Slot:4b}].tag.Potion
execute if score $temp_1 explosivebarrels matches 1..2 run data modify entity @e[type=area_effect_cloud,tag=explosivebarrel_0,limit=1,sort=nearest] Color set from block ~ ~1 ~ Items[{Slot:4b}].tag.CustomPotionColor
execute if score $temp_1 explosivebarrels matches 1..2 run data modify entity @e[type=area_effect_cloud,tag=explosivebarrel_0,limit=1,sort=nearest] Effects append from block ~ ~1 ~ Items[{Slot:4b}].tag.CustomPotionEffects[]

# Secondary cloud setup
execute if score $temp_1 explosivebarrels matches 2..3 run summon area_effect_cloud ~ ~ ~ {Tags:[explosivebarrel_1],Duration:10}
execute if score $temp_1 explosivebarrels matches 2..3 store result entity @e[type=area_effect_cloud,tag=explosivebarrel_1,limit=1,sort=nearest] Radius float 1 run scoreboard players get $temp_0 explosivebarrels

# Secondary cloud effects
execute if score $temp_1 explosivebarrels matches 2..3 run data modify entity @e[type=area_effect_cloud,tag=explosivebarrel_1,limit=1,sort=nearest] Potion set from block ~ ~1 ~ Items[{Slot:22b}].tag.Potion
execute if score $temp_1 explosivebarrels matches 2..3 run data modify entity @e[type=area_effect_cloud,tag=explosivebarrel_1,limit=1,sort=nearest] Color set from block ~ ~1 ~ Items[{Slot:22b}].tag.CustomPotionColor
execute if score $temp_1 explosivebarrels matches 2..3 run data modify entity @e[type=area_effect_cloud,tag=explosivebarrel_1,limit=1,sort=nearest] Effects append from block ~ ~1 ~ Items[{Slot:22b}].tag.CustomPotionEffects[]