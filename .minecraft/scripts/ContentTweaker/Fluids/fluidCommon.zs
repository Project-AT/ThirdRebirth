#priority 20
#modloaded atutils
#loader contenttweaker

import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

import scripts.grassUtils.CotUtils;

function registerFluid(name as string, color as int) as void {
    VanillaFactory.createFluid(name, color).register();
}

var fluidList as int[string] = {
    "infused_slag_slurry" : 0xB7ABC1,
    "germanium_slurry" : 0xD8D1BF,
    "tartaric_acid_solution" : 0xF7F7F7,
    "slag_waste_slurry" : 0x4F351C
};


for name, color in fluidList {
    registerFluid(name, color);
}

CotUtils.addFluid("glaze_slurry", 0x722628, 600, 3000, 3000, 0, false);

//High Density Polyethylene
var hdpe as Fluid = VanillaFactory.createFluid("hdpe", 0x000000);
hdpe.colorize = false;
hdpe.temperature = 350;
hdpe.viscosity = 800;
hdpe.density = 680;
hdpe.luminosity = 1;
hdpe.stillLocation = "contenttweaker:fluids/hdpe_still";
hdpe.flowingLocation = "contenttweaker:fluids/hdpe_flow";
hdpe.register();

var eutrophic as Fluid = VanillaFactory.createFluid("eutrophic_water", 0x228B22);
eutrophic.density = 950;
eutrophic.viscosity = 900;
eutrophic.register();