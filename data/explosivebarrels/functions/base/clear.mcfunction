data modify block ~ ~ ~ Lock set value ""
execute as @e[type=slime,tag=explosivebarrel,distance=..1] run function explosivebarrels:base/removeslime
kill @e[type=item_frame,distance=0..1.5,nbt={Invisible:1b,Fixed:1b}]