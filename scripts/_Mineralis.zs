#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.Item;

function addProperties(block as Block) as Block {
    block.setLightOpacity(0);
    block.setLightValue(0);
    block.setBlockHardness(5.0);
    block.setBlockResistance(5.0);
    block.setToolClass("pickaxe");
    block.setToolLevel(1);
    block.setBlockSoundType(<soundtype:stone>);
	block.canSilkHarvest = false;
	return block;
}

var entropyInfused = VanillaFactory.createBlock("entropy_infused_ore", <blockmaterial:rock>);
entropyInfused = addProperties(entropyInfused);
entropyInfused.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_entropy_infused_0>);
	return;
});
entropyInfused.register();

var ordoInfused = VanillaFactory.createBlock("ordo_infused_ore", <blockmaterial:rock>);
ordoInfused = addProperties(ordoInfused);
ordoInfused.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_ordo_infused_0>);
	return;
});
ordoInfused.register();

var ignisInfused = VanillaFactory.createBlock("ignis_infused_ore", <blockmaterial:rock>);
ignisInfused = addProperties(ignisInfused);
ignisInfused.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_ignis_infused_0>);
	return;
});
ignisInfused.register();

var aquaInfused = VanillaFactory.createBlock("aqua_infused_ore", <blockmaterial:rock>);
aquaInfused = addProperties(aquaInfused);
aquaInfused.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_aqua_infused_0>);
	return;
});
aquaInfused.register();

var aerInfused = VanillaFactory.createBlock("aer_infused_ore", <blockmaterial:rock>);
aerInfused = addProperties(aerInfused);
aerInfused.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_aer_infused_0>);
	return;
});
aerInfused.register();

var terraInfused = VanillaFactory.createBlock("terra_infused_ore", <blockmaterial:rock>);
terraInfused = addProperties(terraInfused);
terraInfused.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_terra_infused_0>);
	return;
});
terraInfused.register();

var saltOre = VanillaFactory.createBlock("salt_ore", <blockmaterial:rock>);
saltOre = addProperties(saltOre);
saltOre.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_salt_0>);
	return;
});
saltOre.register();

var saltpeterOre = VanillaFactory.createBlock("saltpeter_ore", <blockmaterial:rock>);
saltpeterOre = addProperties(saltpeterOre);
saltpeterOre.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_saltpeter_0>);
	return;
});
saltpeterOre.register();

var biotiteBlock = VanillaFactory.createBlock("biotite_block", <blockmaterial:rock>);
biotiteBlock = addProperties(biotiteBlock);
biotiteBlock.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:compressed_11:11>);
	return;
});
biotiteBlock.register();

var rockSaltOre = VanillaFactory.createBlock("rock_salt_ore", <blockmaterial:rock>);
rockSaltOre = addProperties(rockSaltOre);
rockSaltOre.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_rock_salt_0>);
	return;
});
rockSaltOre.register();

var lepidoliteOre = VanillaFactory.createBlock("lepidolite_ore", <blockmaterial:rock>);
lepidoliteOre = addProperties(lepidoliteOre);
lepidoliteOre.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:gregtech:ore_lepidolite_0>);
	return;
});
lepidoliteOre.register();