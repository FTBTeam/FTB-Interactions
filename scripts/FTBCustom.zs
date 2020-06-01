#loader contenttweaker
#modloaded chickens
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Part;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Chicken;
import mods.contenttweaker.ChickenFactory;
import mods.contenttweaker.ResourceLocation as resLoc;

print("---------------FTB Custom Start------------------");

	#8Bit Soundtrack
VanillaFactory.createRecord("tekmenu", Color.fromHex("2065A9"));

var skystoneLense = VanillaFactory.createItem("skystoneLense");
skystoneLense.register();

var infinityegg = VanillaFactory.createItem("infinityegg");
infinityegg.register();

print("---------------------Initializing metallurgy generation------------------------");


  #Enriched Egg
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("enriched_egg")
  .setPartType(MaterialSystem.getPartType("item"))
  .setOreDictName("enrichedEgg")
  .build();

  #Ore Cluster
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("ore_cluster")
  .setPartType(MaterialSystem.getPartType("item"))
  .setOreDictName("oreCluster")
  .build();

	var smallgearextrudershape = VanillaFactory.createItem("smallgearextrudershape");
	smallgearextrudershape.maxStackSize = 64;
	smallgearextrudershape.register();

var materialMap as int[string] = {
	//Metals
	"Aluminium" : <material:aluminium>.color,
	"Ardite" : 13713936,
	"Banded Iron" : <material:banded_iron>.color,
	"Beryllium" : <material:beryllium>.color,
	"Brown Limonite" : <material:brown_limonite>.color,
	"Cassiterite" : <material:cassiterite>.color,
	"Chalcopyrite" : <material:chalcopyrite>.color,
	"Cobalt" : <material:cobalt>.color,
	"Cooperite" : <material:cooperite>.color,
	"Copper" : <material:copper>.color,
	"Garnierite" : <material:garnierite>.color,
	"Gold" : <material:gold>.color,
	"Ilmenite" : <material:ilmenite>.color,
	"Iridium" : <material:iridium>.color,
	"Iron" : <material:iron>.color,
	"Lead" : <material:lead>.color,
	"Lithium" : <material:lithium>.color,
	"Malachite" : <material:malachite>.color,
	"Magnesium" : <material:magnesium>.color,
	"Manganese" : <material:manganese>.color,
	"Molybdenum" : <material:molybdenum>.color,
	"Naquadah" : <material:naquadah>.color,
	"Nickel" : <material:nickel>.color,
	"Niobium" : <material:niobium>.color,
	"Osmium" : <material:osmium>.color,
	"Palladium" : <material:palladium>.color,
	"Pentlandite" : <material:pentlandite>.color,
	"Platinum" : <material:platinum>.color,
	"Pyrolusite" : <material:pyrolusite>.color,
	"Rutile" : <material:rutile>.color,
	"Silver" : <material:silver>.color,
	"Stibnite" : <material:stibnite>.color,
	"Tantalum" : <material:tantalum>.color,
	"Tetrahedrite" : <material:tetrahedrite>.color,
	"Tin" : <material:tin>.color,
	"Titanium" : <material:titanium>.color,
	"Tungstate" : <material:tungstate>.color,
	"Tungsten" : <material:tungsten>.color,
	"Uraninite" : <material:uraninite>.color,
	"Uranium" : <material:uranium>.color,
	"Uranium 235" : <material:uranium235>.color,
	"Yellow Limonite" : <material:yellow_limonite>.color,
	"Zinc" : <material:zinc>.color,

	//Dusts
	"Bastnasite" : <material:bastnasite>.color,
	"Bauxite" : <material:bauxite>.color,
	"Bentonite" : <material:bentonite>.color,
	"Calcium" : <material:calcium>.color,
	"Calcite" : <material:calcite>.color,
	"Chromite" : <material:chromite>.color,
	"Cinnabar" : <material:cinnabar>.color,
	"Cobaltite" : <material:cobaltite>.color,
	"Fullers Earth" : <material:fullers_earth>.color,
	"Galena" : <material:galena>.color,
	"Glauconite" : <material:glauconite>.color,
	//"Glauconite Sand" : <material:glauconite_sand>.color,	// not needed
	"Graphite" : <material:graphite>.color,
	"Grossular" : <material:grossular>.color,
	"Lepidolite" : <material:lepidolite>.color,
	"Magnesite" : <material:magnesite>.color,
	"Magnetite" : <material:magnetite>.color,
	"Monazite" : <material:monazite>.color,
	"Naquadah Enriched" : <material:naquadah_enriched>.color,
	"Pitchblende" : <material:pitchblende>.color,
	"Powellite" : <material:powellite>.color,
	"Phosphor" : <material:phosphor>.color,
	"Pyrite" : <material:pyrite>.color,
	"Redstone" : <material:redstone>.color,
	"Rock Salt" : <material:rock_salt>.color,
	"Salt" : <material:salt>.color,
	"Saltpeter" : <material:saltpeter>.color,
	"Scheelite" : <material:scheelite>.color,
	"Soapstone" : <material:soapstone>.color,
	"Sodalite" : <material:sodalite>.color,
	"Spessartine" : <material:spessartine>.color,
	"Sphalerite" : <material:sphalerite>.color,
	//"Silicon" : <material:silicon>.color,
	"Spodumene" : <material:spodumene>.color,
	"Sulfur" : <material:sulfur>.color,
	"Talc" : <material:talc>.color,
	"Tantalite" : <material:tantalite>.color,
	"Thorium" : <material:thorium>.color,
	"Vanadium Magnetite" : <material:vanadium_magnetite>.color,
	"Wulfenite" : <material:wulfenite>.color,

	//Gems
	"Amethyst" : <material:amethyst>.color,
	"Apatite" : <material:apatite>.color,
	"Barite" : <material:barite>.color,
	"Blue Topaz" : <material:blue_topaz>.color,
	"Certus Quartz" : <material:certus_quartz>.color,
	"Coal" : <material:coal>.color,
	"Diamond" : <material:diamond>.color,
	"Emerald" : <material:emerald>.color,
	"Garnet Red" : <material:garnet_red>.color,
	"Garnet Sand" : <material:garnet_sand>.color,
	"Garnet Yellow" : <material:garnet_yellow>.color,
	"Green Sapphire" : <material:green_sapphire>.color,
	"Jasper" : <material:jasper>.color,
	"Lapis" : <material:lapis>.color,
	"Lazurite" : <material:lazurite>.color,
	"Lignite" : <material:lignite>.color,
	"Nether Quartz" : <material:nether_quartz>.color,
	"Olivine" : <material:olivine>.color,
	"Opal" : <material:opal>.color,
	"Pyrope" : <material:pyrope>.color,
	"Quartz Sand" : <material:quartz_sand>.color,
	"Quartzite" : <material:quartzite>.color,
	"Ruby" : <material:ruby>.color,
	"Sapphire" : <material:sapphire>.color,
	"Tanzanite" : <material:tanzanite>.color,
	"Topaz" : <material:topaz>.color,
	"Menril" : <material:vinteum>.color,
	"Vinteum" : <material:vinteum>.color
};

for material, color in materialMap {
	var part = MaterialSystem.getMaterialBuilder()
		.setName(material)
		.setColor(color)
		.build();
	part.registerPart("dense_ore");
	print(material + " Dense Ore registered");
	part.registerPart("clump");
	print(material + " Clump registered");
	part.registerPart("crystal");
	print(material + "Crystal registered");
	part.registerPart("ore_cluster");
	print(material + " Ore Cluster registered");	
	part.registerPart("shard");
}

/*
Removed enriched egg generation
	part.registerPart("enriched_egg");
	print(material + " Enriched egg registered");
*/

	#Exceptions - Infinity Enriched Egg


var eggMaterialMap as int[string] = {
	"Apatite" : <material:apatite>.color,
	"Astral" : <material:cobalt>.color,
	"Blood" : <material:red_matter>.color,
	"Canola" : <material:bauxite>.color,
	"Concrete" : <material:concrete>.color,
	"Flourine" : <material:uranium>.color,
	"Fluix" : <material:fluix>.color,
	"Gassy" : <material:osmium>.color,
	"Glass" : <material:glass>.color,
	"Graphite" : <material:graphite>.color,
	"Latticite" : <material:rawlattitice>.color,
	"Learning" : <material:emerald>.color,
	"Mana" : <material:vinteum>.color,
	"Menril" : <material:vinteum>.color,
	"Plastic" : <material:tantalite>.color,
	"Porcelain" : <material:bone>.color,
	"Polywhatsit" : <material:bone>.color,
	"Primal" : <material:unstable_mana>.color,
	"Radon": <material:plutonium>.color,
	"Resonating" : <material:glauconite>.color,
	"Rubber" : <material:rubber>.color,
	"Vinteum" : <material:vinteum>.color,
	"Smog" : <material:rubber>.color,
	"Space" : <material:topaz>.color,
	"Spice" : <material:beryllium>.color
};

for material, color in eggMaterialMap {
	var part = MaterialSystem.getMaterialBuilder()
		.setName(material)
		.setColor(color)
		.build();
	part.registerPart("enriched_egg");
	print(material + " Enriched egg registered");
}


print("---------------------Initializing Custom Chickens------------------------");

var infinitychicken = ChickenFactory.createChicken("infinitychicken", Color.fromHex("000000"), <item:contenttweaker:infinityegg>);
infinitychicken.setForegroundColor(Color.fromHex("007F7F"));
infinitychicken.setSpawnType("NONE");
infinitychicken.register();

var ftbchicken = ChickenFactory.createChicken("ftbchicken", Color.fromInt(0xffffff), <item:minecraft:clay>);
ftbchicken.setForegroundColor(Color.fromInt(0x054549));
ftbchicken.setSpawnType("NONE");
ftbchicken.register();


var apatiteChicken = ChickenFactory.createChicken("apatitechicken", Color.fromInt(<material:apatite>.color), <item:contenttweaker:apatite_enriched_egg>);
apatiteChicken.setSpawnType("NONE");
apatiteChicken.register();

var graphitechicken = ChickenFactory.createChicken("graphitechicken", Color.fromInt(<material:graphite>.color), <item:contenttweaker:graphite_enriched_egg>);
graphitechicken.setSpawnType("NONE");
graphitechicken.register();

var canolachicken = ChickenFactory.createChicken("canolachicken", Color.fromInt(<material:bauxite>.color), <item:contenttweaker:canola_enriched_egg>);
canolachicken.setSpawnType("NONE");
canolachicken.register();

var astralchicken = ChickenFactory.createChicken("astralchicken", Color.fromHex("3c3ac2"), <item:contenttweaker:astral_enriched_egg>);
astralchicken.setSpawnType("NONE");
astralchicken.register();

var resonatingchicken = ChickenFactory.createChicken("resonatingchicken", Color.fromHex("6a0d7a"), <item:contenttweaker:resonating_enriched_egg>);
resonatingchicken.setSpawnType("NONE");
resonatingchicken.register();

var fluorinechicken = ChickenFactory.createChicken("fluorinechicken", Color.fromHex("088787"), <item:contenttweaker:flourine_enriched_egg>);
fluorinechicken.setSpawnType("NONE");
fluorinechicken.register();

#Gassy Chicken
var gassychicken = ChickenFactory.createChicken("gassychicken", Color.fromHex("0dffff"), <item:contenttweaker:gassy_enriched_egg>);
gassychicken.setSpawnType("NONE");
gassychicken.register();

#Radon Chicken
var radonchicken = ChickenFactory.createChicken("radonchicken", Color.fromHex("ff0d52"), <item:contenttweaker:radon_enriched_egg>);
radonchicken.setSpawnType("NONE");
radonchicken.register();

#Vinteum Chicken
var vinteumchicken = ChickenFactory.createChicken("vinteumchicken", <material:vinteum>.color, <item:contenttweaker:vinteum_enriched_egg>);
vinteumchicken.setSpawnType("NONE");
vinteumchicken.register();

#Plastic Chicken
var plasticchicken = ChickenFactory.createChicken("plasticchicken", Color.fromHex("000000"), <item:contenttweaker:plastic_enriched_egg>);
plasticchicken.setSpawnType("NONE");
plasticchicken.register();

#Learned Chicken
var learningchicken = ChickenFactory.createChicken("learningchicken", Color.fromHex("0dff56"), <item:contenttweaker:learning_enriched_egg>);
learningchicken.setSpawnType("NONE");
learningchicken.register();

#Mana Chicken
var manachicken = ChickenFactory.createChicken("manachicken", <material:vinteum>.color, <item:contenttweaker:mana_enriched_egg>);
manachicken.setSpawnType("NONE");
manachicken.register();

#Glass Chicken
var glasschicken = ChickenFactory.createChicken("glasschicken", Color.fromHex("000000"), <item:contenttweaker:glass_enriched_egg>);
glasschicken.setSpawnType("NONE");
glasschicken.register();

#Menril Chicken
var menrilchicken = ChickenFactory.createChicken("menrilchicken", <material:vinteum>.color, <item:contenttweaker:menril_enriched_egg>);
menrilchicken.setSpawnType("NONE");
menrilchicken.register();

#Smog Chicken
var smogchicken = ChickenFactory.createChicken("smogchicken", Color.fromHex("634417"), <item:contenttweaker:smog_enriched_egg>);
smogchicken.setSpawnType("NONE");
smogchicken.register();

#Rubber Chicken
var rubberchicken = ChickenFactory.createChicken("rubberchicken", <material:rubber>.color, <item:contenttweaker:rubber_enriched_egg>);
rubberchicken.setSpawnType("NONE");
rubberchicken.register();

#Primal Chicken
var primalchicken = ChickenFactory.createChicken("primalchicken", <material:unstable_mana>.color, <item:contenttweaker:primal_enriched_egg>);
primalchicken.setSpawnType("NONE");
primalchicken.register();

#Concrete Chicken
var concretechicken = ChickenFactory.createChicken("concretechicken", <material:concrete>.color, <item:contenttweaker:concrete_enriched_egg>);
concretechicken.setSpawnType("NONE");
concretechicken.register();

#Spicey Chicken
var spicechicken = ChickenFactory.createChicken("spicechicken", Color.fromHex("3c5c26"), <item:contenttweaker:spice_enriched_egg>);
spicechicken.setSpawnType("NONE");
spicechicken.register();

#Space Chicken
var spacechicken = ChickenFactory.createChicken("spacechicken", <material:topaz>.color, <item:contenttweaker:space_enriched_egg>);
spacechicken.setSpawnType("NONE");
spacechicken.register();

#Blood Chicken
var bloodchicken = ChickenFactory.createChicken("bloodchicken", <material:red_matter>.color, <item:contenttweaker:blood_enriched_egg>);
bloodchicken.setSpawnType("NONE");
bloodchicken.register();

#Fluix Chicken
var fluixchicken = ChickenFactory.createChicken("fluixchicken", <material:fluix>.color, <item:contenttweaker:fluix_enriched_egg>);
fluixchicken.setSpawnType("NONE");
fluixchicken.register();

#Porcelain Chicken
var porcelainchicken = ChickenFactory.createChicken("porcelainchicken", <material:bone>.color, <item:contenttweaker:porcelain_enriched_egg>);
porcelainchicken.setSpawnType("NONE");
porcelainchicken.register();

#Polywhatsit Chicken
var polywhatsitchicken = ChickenFactory.createChicken("polywhatsitchicken", <material:tantalite>.color, <item:contenttweaker:poly_enriched_egg>);
polywhatsitchicken.setSpawnType("NONE");
polywhatsitchicken.register();

#Lattice Chicken
var latticitechicken = ChickenFactory.createChicken("latticitechicken", <material:rawlattitice>.color, <item:contenttweaker:latticite_enriched_egg>);
latticitechicken.setSpawnType("NONE");
latticitechicken.register();




print("----------------FTB Custom End-------------------");
