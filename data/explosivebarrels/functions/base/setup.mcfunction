data modify block ~ ~ ~ Lock set value "ExplosiveBarrelABCDEFGHIJKLMNOPQRSTU"
execute if block ~ ~ ~ barrel[facing=up] run function explosivebarrels:base/decor/up
execute if block ~ ~ ~ barrel[facing=down] run function explosivebarrels:base/decor/down
execute if block ~ ~ ~ barrel[facing=north] run function explosivebarrels:base/decor/north
execute if block ~ ~ ~ barrel[facing=west] run function explosivebarrels:base/decor/west
execute if block ~ ~ ~ barrel[facing=south] run function explosivebarrels:base/decor/south
execute if block ~ ~ ~ barrel[facing=east] run function explosivebarrels:base/decor/east
execute align xyz run summon slime ~0.5 ~-0.25 ~0.5 {Attributes:[{Name:generic.maxHealth, Base:100.0}],Health:100f,Silent:1b,NoAI:1b,Size:2,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}],Tags:[explosivebarrel]}