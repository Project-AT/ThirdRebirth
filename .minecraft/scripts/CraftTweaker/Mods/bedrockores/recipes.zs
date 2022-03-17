#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <bedrockores:bedrock_miner>, [
    [null, <immersiveengineering:metal_decoration0:5>],
    [<ore:plateSteel>, <teslacorelib:machine_case>, <ore:plateSteel>],
    [<ore:gearSteel>, <ore:gearSteel>, <ore:gearSteel>]
], {<ore:artisansDriver> : 19, <ore:artisansSpanner> : 24});
