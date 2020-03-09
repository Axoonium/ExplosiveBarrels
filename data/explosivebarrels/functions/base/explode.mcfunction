# Radius
execute store result score $temp_0 explosivebarrels run data get block ~ ~1 ~ Items[{Slot:13b}].Count
scoreboard players add $temp_0 explosivebarrels 2

# Effects
scoreboard players set $temp_1 explosivebarrels 0
execute if data block ~ ~1 ~ {Items:[{Slot:4b,id:"minecraft:splash_potion"}]} run scoreboard players add $temp_1 explosivebarrels 1
execute if data block ~ ~1 ~ {Items:[{Slot:22b,id:"minecraft:splash_potion"}]} run scoreboard players add $temp_1 explosivebarrels 2
execute if score $temp_1 explosivebarrels matches 1..3 run function explosivebarrels:base/effects/potion

scoreboard players set $temp_1 explosivebarrels 0
execute if data block ~ ~1 ~ {Items:[{Slot:4b,id:"minecraft:lingering_potion"}]} run scoreboard players add $temp_1 explosivebarrels 1
execute if data block ~ ~1 ~ {Items:[{Slot:22b,id:"minecraft:lingering_potion"}]} run scoreboard players add $temp_1 explosivebarrels 2
execute if score $temp_1 explosivebarrels matches 1..3 run function explosivebarrels:base/effects/lingeringpotion

scoreboard players set $temp_1 explosivebarrels 0
execute if data block ~ ~1 ~ {Items:[{Slot:4b,id:"minecraft:firework_rocket"}]} run scoreboard players add $temp_1 explosivebarrels 1
execute if data block ~ ~1 ~ {Items:[{Slot:22b,id:"minecraft:firework_rocket"}]} run scoreboard players add $temp_1 explosivebarrels 2
execute if score $temp_1 explosivebarrels matches 1..3 run function explosivebarrels:base/effects/firework

# Main Explosion
execute as @e[type=item_frame,distance=0..1.5,nbt={Invisible:1b,Fixed:1b},tag=explosivebarrel,limit=5,sort=nearest] run data modify entity @s Fixed set value 0b
execute as @e[type=item_frame,distance=0..1.5,nbt={Invisible:1b,Fixed:0b},tag=explosivebarrel,limit=5,sort=nearest] at @s run teleport @s ~ -70 ~
data modify block ~ ~1 ~ Items set value []
summon creeper ~ 500 ~ {NoAI:1b,Fuse:0s,Tags:[explosivebarrel]}
execute positioned ~ 500 ~ store result entity @e[type=creeper,tag=explosivebarrel,sort=nearest,limit=1] ExplosionRadius byte 1 run scoreboard players get $temp_0 explosivebarrels
tp @e[y=500,type=creeper,tag=explosivebarrel,sort=nearest,limit=1] ~ ~ ~
fill ~ ~1 ~ ~ ~1 ~ air replace barrel
function explosivebarrels:base/removeslime