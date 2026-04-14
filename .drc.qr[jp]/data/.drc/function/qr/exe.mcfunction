function .drc:load
$data merge storage .drc:.url {url:"$(url)"}
$data modify storage .drc:.qr config.player_head_space set value "$(player_head_space)"
function .drc:qr/run_from_storage

execute unless items entity @s container.* minecraft:map unless items entity @s weapon.offhand minecraft:map run give @s minecraft:map
