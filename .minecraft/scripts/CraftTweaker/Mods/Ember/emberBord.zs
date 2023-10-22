#priority 5
#modloaded trutils

import mods.embers.EmberBore;

var default as EmberBore = EmberBore.getDefault();
default.addOutput(<enderio:item_material:20> % 20);
default.addOutput(<matteroverdrive:artifact> % 0.1);