#背景色
fill ~-64 ~ ~-64 ~63 ~ ~63 white_concrete
execute if data storage .drc:.qr config.border_block run function .drc:qr/render_map_border with storage .drc:.qr config
#
function .drc:qr/build_bits_from_codewords
function .drc:qr/draw_fixed
function .drc:qr/draw_data_mask0
execute if data storage .drc:.qr {config:{player_head_space:"1"}} run function .drc:qr/head_marker_overlay
