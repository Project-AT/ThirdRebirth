#priority 15
#modloaded trutils

import crafttweaker.entity.IEntityDefinition;

<entity:minecraft:creeper>.addDrop(<ore:dustSulfur>.firstItem, 0, 2);
<entity:embers:ancient_golem>.addDrop(<embers:archaic_circuit>, 0, 3);
<entity:minecraft:zombie>.removeDrop(<ore:ingotIron>.firstItem);
<entity:minecraft:zombie>.addDrop(<ore:ingotRustyIron>.firstItem % 10);

