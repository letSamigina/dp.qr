data remove storage .drc:.qr config.border_block
function .drc:qr/url_brand/match_youtube
execute unless data storage .drc:.qr config.border_block run function .drc:qr/url_brand/match_youtu_be
execute unless data storage .drc:.qr config.border_block run function .drc:qr/url_brand/match_github
execute unless data storage .drc:.qr config.border_block run function .drc:qr/url_brand/match_zenn
execute unless data storage .drc:.qr config.border_block run function .drc:qr/url_brand/match_discord
execute unless data storage .drc:.qr config.border_block run function .drc:qr/url_brand/match_twitch
execute unless data storage .drc:.qr config.border_block run function .drc:qr/url_brand/match_twitter
execute unless data storage .drc:.qr config.border_block run function .drc:qr/url_brand/match_x
