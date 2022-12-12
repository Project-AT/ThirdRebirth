#priority 20
#modloaded trutils
#loader crafttweaker reloadableevents 

zenClass allStage {

    var stageNames as string[];

    zenConstructor() {
        stageNames = [
            "oreStage",
            "villager"
        ];
    }

    function insert(stageName as string) as void {
        if (stageNames has stageName) {
            return;
        }
        stageNames += stageName;
    }

    function getStageName() as string[] {
        return stageNames;
    }
}