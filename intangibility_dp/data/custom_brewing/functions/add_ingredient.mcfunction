item replace block ~ ~ ~ container.3 with minecraft:chorus_fruit
data modify block ~ ~ ~ Items[{Slot:3b}].Count set from entity @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},sort=nearest,limit=1] Item.Count
tag @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},sort=nearest,limit=1] add used