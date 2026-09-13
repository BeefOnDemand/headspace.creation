$execute in $(dimension) positioned $(x) $(y) $(z) unless entity @s[tag=cr.tag.ForceloadedOtherworldChunk] store success score @s cr.check.PermanentChunk run forceload query ~ ~
$execute in $(dimension) positioned $(x) $(y) $(z) store success score @s cr.check.LoadedChunk run forceload query ~ ~
scoreboard players set @s cr.check.BedLocated 0

$execute in $(dimension) positioned $(x) $(y) $(z) if score @s cr.check.PermanentChunk matches 0 run forceload add ~ ~
$execute in $(dimension) if score @s cr.check.PermanentChunk matches 0 run tag @s add cr.tag.ForceloadedOtherworldChunk

$execute if score @s cr.check.LoadedChunk matches 1 run function creation:backend/tools/check_target_area_for_bed {dimension:"$(dimension)",x:"$(x)",y:"$(y)",z:"$(z)"}

$execute if score @s cr.check.BedLocated matches 1 at @s as @a[distance=..2,sort=furthest,predicate=creation:on_otherworld_bed,predicate=!creation:sneaking,predicate=creation:creation_user] in $(dimension) run tp $(x) $(y) $(z)
$execute if score @s cr.check.BedLocated matches 1 in $(dimension) run return run tp $(x) $(y) $(z)