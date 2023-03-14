# Start phasing blocks
execute as @a[predicate=phasing:can_phase] at @s run function phasing:phase_blocks

# Convert debug stick items to a entities
execute as @e[type=item,nbt={Item:{tag:{CreateTunnel:1b}}}] at @s run function phasing:item_to_display

# Remove any stray invisible debug sticks
clear @a minecraft:debug_stick{CustomModelData:42}

# Finish solidifying blocks
execute as @e[tag=phase_marker,tag=solidifying] at @s unless block ~ ~ ~ minecraft:command_block run function phasing:display_to_block_b

# Start solidifying blocks
execute as @e[tag=phase_marker,tag=!solidifying] at @s unless entity @a[predicate=phasing:can_phase,distance=0..3] run function phasing:display_to_block_a
execute as @e[tag=phase_marker,tag=!solidifying] at @s unless block ~ ~ ~ minecraft:air run function phasing:display_to_block_a