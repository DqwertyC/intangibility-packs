setblock ~ ~ ~ minecraft:air

execute align xyz run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:bedrock"},Tags:["phase_display","newest"]}
data modify entity @e[tag=newest,limit=1] block_state.Name set from entity @s Item.tag.BlockName
data modify entity @e[tag=newest,limit=1] block_state.Properties set from entity @s Item.tag.BlockStateTag
tag @e[tag=newest] remove newest

execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["phase_marker","newest"]}
data modify entity @e[tag=newest,limit=1] data set from entity @s Item.tag
tag @e[tag=newest] remove newest

kill @e[type=experience_orb,nbt={Age:0s},distance=..2]
kill @e[type=item,nbt={Age:0s},distance=..2]
kill @s