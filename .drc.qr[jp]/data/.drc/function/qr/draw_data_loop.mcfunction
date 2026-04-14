execute unless data storage .drc:.qr work.path[0] run return 0
execute unless data storage .drc:.qr work.bits[0] run return 0
data remove storage .drc:.qr temp.cell
data modify storage .drc:.qr temp.cell set from storage .drc:.qr work.path[0]
data remove storage .drc:.qr temp.bit
data modify storage .drc:.qr temp.bit set from storage .drc:.qr work.bits[0]
data modify storage .drc:.qr temp.x0 set from storage .drc:.qr temp.cell.x0
data modify storage .drc:.qr temp.x1 set from storage .drc:.qr temp.cell.x1
data modify storage .drc:.qr temp.z0 set from storage .drc:.qr temp.cell.z0
data modify storage .drc:.qr temp.z1 set from storage .drc:.qr temp.cell.z1
function .drc:qr/apply_cell_mask0 with storage .drc:.qr temp
data remove storage .drc:.qr work.path[0]
data remove storage .drc:.qr work.bits[0]
function .drc:qr/draw_data_loop
