execute store result storage .drc:.qr payload.ecc_count int 1 run data get storage .drc:.binary code.8bit
execute if data storage .drc:.qr {payload:{ecc_count:26}} run return 0
execute if data storage .drc:.qr {payload:{ecc_count:27}} run return 0
execute if data storage .drc:.qr {payload:{ecc_count:28}} run return 0
execute if data storage .drc:.qr {payload:{ecc_count:29}} run return 0
execute if data storage .drc:.qr {payload:{ecc_count:30}} run return 0
data modify storage .drc:.binary code.8bit prepend value 0
function .drc:qr/ecc/pad_loop
