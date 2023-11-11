#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import mods.nuclearcraft.Manufactory;

//400t 20rf/t
Manufactory.removeRecipeWithOutput(<ore:dustHOPGraphite>);
Manufactory.removeRecipeWithOutput(<ore:itemSilicon>);

var harvestcraftGrinder as IIngredient[IIngredient] = {
    <betteranimalsplus:venisonraw> : <harvestcraft:groundvenisonitem> * 2,
    <familiarfauna:venison_raw> : <harvestcraft:groundvenisonitem> * 2,
    <mysticalworld:venison> : <harvestcraft:groundvenisonitem> * 2,
    <harvestcraft:venisonrawitem> : <harvestcraft:groundvenisonitem> * 2,
    <harvestcraft:rawtofenisonitem> : <harvestcraft:groundvenisonitem> * 2,

    <betteranimalsplus:turkey_leg_raw> : <harvestcraft:groundturkeyitem> * 2,
    <betteranimalsplus:turkey_raw> : <harvestcraft:groundturkeyitem> * 2,
    <familiarfauna:turkey_leg_raw> : <harvestcraft:groundturkeyitem> * 2,
    <harvestcraft:turkeyrawitem> : <harvestcraft:groundturkeyitem> * 2,
    <harvestcraft:rawtofurkeyitem> : <harvestcraft:groundturkeyitem> * 2,

    <minecraft:rabbit> : <harvestcraft:groundrabbititem> * 2,
    <harvestcraft:rawtofabbititem> : <harvestcraft:groundrabbititem> * 2,

    <minecraft:porkchop> : <harvestcraft:groundporkitem> * 2,
    <harvestcraft:rawtofaconitem> : <harvestcraft:groundporkitem> * 2,

    <minecraft:mutton> : <harvestcraft:groundmuttonitem> * 2,
    <harvestcraft:rawtofuttonitem> : <harvestcraft:groundmuttonitem> * 2,

    <ore:listAllfishfresh> : <harvestcraft:groundfishitem> * 2,

    <harvestcraft:duckrawitem> : <harvestcraft:groundduckitem> * 2,
    <harvestcraft:rawtofuduckitem> : <harvestcraft:groundduckitem> * 2,

    <minecraft:chicken> : <harvestcraft:groundchickenitem> * 2,
    <betteranimalsplus:pheasantraw> : <harvestcraft:groundchickenitem> * 2,
    <harvestcraft:rawtofickenitem> : <harvestcraft:groundchickenitem> * 2,

    <minecraft:beef> : <harvestcraft:groundbeefitem> * 2,
    <harvestcraft:rawtofeakitem> : <harvestcraft:groundbeefitem> * 2,

    <ore:cropCinnamon> : <harvestcraft:groundcinnamonitem> * 2,
};

for input, output in harvestcraftGrinder{
    Manufactory.addRecipe(input, output, 0.125, 0.5);
}