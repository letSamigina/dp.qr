execute unless data storage .drc:.qr work.codewords[0] run return 0
data remove storage .drc:.qr temp.byte
data modify storage .drc:.qr temp.byte set from storage .drc:.qr work.codewords[0]
function .drc:qr/append_byte_bits with storage .drc:.qr temp
data remove storage .drc:.qr work.codewords[0]
function .drc:qr/build_bits_loop
