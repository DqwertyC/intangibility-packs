playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~
execute if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:chorus_fruit"}]} run function custom_brewing:brew_potion/invis_to_intan
execute if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:gunpowder"}]} run function custom_brewing:brew_potion/norm_to_splash
execute if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:dragon_breath"}]} run function custom_brewing:brew_potion/splash_to_ling
execute if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:redstone"}]} run function custom_brewing:brew_potion/norm_to_long
item modify block ~ ~ ~ container.3 custom_brewing:decrease_count
tag @s remove brewing