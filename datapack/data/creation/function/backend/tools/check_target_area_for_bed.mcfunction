$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1

$execute in $(dimension) positioned $(x) $(y) $(z) if block ~-1 ~ ~ minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~1 ~ ~ minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~-1 minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~1 minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1

$execute in $(dimension) positioned $(x) $(y) $(z) if block ~-1 ~ ~-1 minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~-1 ~ ~1 minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~1 ~ ~-1 minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~1 ~ ~1 minecraft:$(bed_type) run return run scoreboard players set @s cr.check.BedLocated 1