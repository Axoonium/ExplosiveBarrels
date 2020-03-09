execute store result score $temp_0 explosivebarrels run data get entity @s Health
execute store result score $temp_1 explosivebarrels run data get entity @s Attributes[{Name:"generic.maxHealth"}].Base
execute if score $temp_0 explosivebarrels < $temp_1 explosivebarrels run function explosivebarrels:base/explode
execute if block ~1 ~1 ~ fire run function explosivebarrels:base/explode
execute if block ~-1 ~1 ~ fire run function explosivebarrels:base/explode
execute if block ~ ~2 ~ fire run function explosivebarrels:base/explode
execute if block ~ ~ ~ fire run function explosivebarrels:base/explode
execute if block ~ ~1 ~1 fire run function explosivebarrels:base/explode
execute if block ~ ~1 ~-1 fire run function explosivebarrels:base/explode