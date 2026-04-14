data remove storage .drc:.qr work.codewords
data modify storage .drc:.qr work.codewords set from storage .drc:.qr payload.rs_work
data remove storage .drc:.qr work.bits
data modify storage .drc:.qr work.bits set value []
function .drc:qr/build_bits_loop
