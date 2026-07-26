execute if data storage creation:datapack pack.history.1_0_1 run return fail
data modify storage creation:datapack pack.history.1_0_1 set value ""
execute unless data storage creation:datapack pack.origin run data modify storage creation:datapack pack.origin.1_0_1 set value ""
data modify storage creation:datapack pack.version set value "v1.0.1"
data modify storage creation:datapack pack.changes set value '\
* Bed teleporting fully reworked, should no longer incorrectly fail to find a bed if it still exists \n\
* In creation dimensions, you can now "fall" into the void to return to that dimension\'s spawn area \n\
'

function creation:backend/pack/patch/check
scoreboard players add [Creation] cr.dpack.Updated 1