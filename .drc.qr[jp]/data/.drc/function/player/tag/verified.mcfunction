execute as @a[tag=!.drc.qr.verified] if entity @s run function .drc:score/make
execute as @a[tag=!.drc.qr.verified] if entity @s run tag @s add .drc.qr.verified
