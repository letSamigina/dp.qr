# Input: storage .drc:.url {url:"..."}
# Option: mask is fixed to 0 by load function.
execute store result score @s .smgn.url.length run data get storage .drc:.url url
execute if score @s .smgn.url.length matches 43.. run tellraw @s {"text":"[drc] URL is too long. Version 3 / M allows up to 42 characters.","color":"red"}
execute if score @s .smgn.url.length matches 43.. run return 0

# phase 1-2: URL analysis + ECC generation
data modify storage .drc:.qr input.url set from storage .drc:.url url
execute if data storage .drc:.qr {config:{debug:1b}} run tellraw @s {"text":"[.drc] Received input URL","color":"yellow"}
function .drc:qr/prepare_data
execute if data storage .drc:.qr {config:{debug:1b}} if data storage .drc:.qr {payload:{ecc_ok:1b}} run tellraw @s {"text":"[.drc] Parse / ECC stage complete","color":"yellow"}
execute if data storage .drc:.qr {payload:{ecc_ok:1b}} run function .drc:qr/center_exe
execute if data storage .drc:.qr {config:{debug:1b}} if data storage .drc:.qr {payload:{ecc_ok:1b}} run tellraw @s {"text":"[.drc] Render stage executed","color":"yellow"}
execute unless data storage .drc:.qr {payload:{ecc_ok:1b}} run tellraw @s {"text":"[.drc] Aborted render due to ECC failure","color":"red"}
