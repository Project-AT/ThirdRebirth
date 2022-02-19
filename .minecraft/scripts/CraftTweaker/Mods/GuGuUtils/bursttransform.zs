#priority 5
#modloaded atutils
import crafttweaker.data.IData;

import mods.guguutils.BurstTransform;

BurstTransform.addRecipe(<pneumaticcraft:unassembled_pcb>, 100, <pneumaticcraft:empty_pcb:*>, 
    function(input, context) {
        var damage as int = input.item.damage;
        var tag as IData = input.item.tag;

        if(damage > 0) {
            context.setOutput(<pneumaticcraft:empty_pcb>.withDamage(damage - 5));
        } else if(isNull(tag.etchProgress)) {
            context.setOutput(<pneumaticcraft:empty_pcb>.withTag({etchProgress: 5}));
        } else if(tag.etchProgress.asInt() < 95) {
            context.setOutput(<pneumaticcraft:empty_pcb>.withTag({etchProgress: (5 + tag.etchProgress.asInt())}));
        }
        return true;
    }
);
