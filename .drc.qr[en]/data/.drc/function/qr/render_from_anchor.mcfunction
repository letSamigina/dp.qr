execute at @e[type=area_effect_cloud,tag=.drc.qr.anchor,sort=nearest,limit=1] run function .drc:qr/render_dynamic
kill @e[type=area_effect_cloud,tag=.drc.qr.anchor,distance=..2,limit=1,sort=nearest]
execute if data storage .drc:.qr {config:{debug:1b}} run tellraw @s {"text":"[.drc.qr] Anchor processing complete","color":"green"}
