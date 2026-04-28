# Snap player position to map origin (128x128)
execute store result storage .drc:.map xyz.x double 0.0078125 run data get entity @s Pos[0] 1
execute store result storage .drc:.map xyz.z double 0.0078125 run data get entity @s Pos[2] 1

execute store result score @s .smgn.Pos.x.calc run data get storage .drc:.map xyz.x 10
execute store result score @s .smgn.Pos.z.calc run data get storage .drc:.map xyz.z 10

scoreboard players operation @s .smgn.Pos.x.calc += $5 .smgn.const
scoreboard players operation @s .smgn.Pos.z.calc += $5 .smgn.const
scoreboard players operation @s .smgn.Pos.x.calc /= $10 .smgn.const
scoreboard players operation @s .smgn.Pos.z.calc /= $10 .smgn.const
scoreboard players operation @s .smgn.Pos.x.calc *= $128 .smgn.const
scoreboard players operation @s .smgn.Pos.z.calc *= $128 .smgn.const

execute store result storage .drc:.map xyz.x int 1 run scoreboard players get @s .smgn.Pos.x.calc
execute store result storage .drc:.map xyz.z int 1 run scoreboard players get @s .smgn.Pos.z.calc

function .drc:qr/summon_anchor with storage .drc:.map xyz
execute if data storage .drc:.qr {config:{debug:1b}} run tellraw @s {"text":"[.drc.qr] Computed map center and placed anchor","color":"aqua"}
function .drc:qr/render_from_anchor
