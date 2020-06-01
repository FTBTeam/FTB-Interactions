import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val fluid_extractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val vacFreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

print("---------------Logistic Pipes Start------------------");


recipes.remove(<logisticspipes:pipe_remote_orderer>);
recipes.remove(<logisticspipes:remote_orderer>);


#remote pipe orderer
	recipes.addShaped(<logisticspipes:pipe_remote_orderer>, 
	[[<ore:wireFineStainlessSteel>, <rftools:infused_enderpearl>, <ore:wireFineStainlessSteel>],
	[null, <logisticspipes:pipe_basic>, null], 
	[<ore:wireFineStainlessSteel>, <astralsorcery:itemcraftingcomponent:4>, <ore:wireFineStainlessSteel>]]);


#remote orderer
	recipes.addShaped(<logisticspipes:remote_orderer>, 
	[[<ore:platePlastic>, <rftools:infused_enderpearl>, <ore:platePlastic>],
	[<astralsorcery:itemcraftingcomponent:4>, <ore:blockGlass>, <astralsorcery:itemcraftingcomponent:4>], 
	[<ore:platePlastic>, <ore:circuitBasic>, <ore:platePlastic>]]);


#Blank module
recipes.remove(<logisticspipes:module_blank>);
	alloyer.recipeBuilder()
    .inputs(<ore:foilRedAlloy>, <ore:itemRubber>)
    .outputs(<logisticspipes:module_blank>*2)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

#Basic chip
recipes.remove(<logisticspipes:chip_basic_raw>);
	alloyer.recipeBuilder()
    .inputs(<ore:circuitPrimitive>, <ore:wireFineRedAlloy>*2)
    .outputs(<logisticspipes:chip_basic_raw>*2)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

#advanced chip
recipes.remove(<logisticspipes:chip_advanced_raw>);
	alloyer.recipeBuilder()
    .inputs(<logisticspipes:chip_basic_raw> *2, <ore:gemFlawlessDiamond>)
    .outputs(<logisticspipes:chip_advanced_raw>*2)
    .duration(240)
    .EUt(16)
    .buildAndRegister();


#fpga Chip
recipes.remove(<logisticspipes:chip_fpga_raw>);
	alloyer.recipeBuilder()
    .inputs(<ore:circuitBasic>, <ore:wireFineGold>*2)
    .outputs(<logisticspipes:chip_fpga_raw>*2)
    .duration(280)
    .EUt(16)
    .buildAndRegister();

#Basic transport pipes
recipes.remove(<logisticspipes:pipe_transport_basic>);
recipes.addShaped(<logisticspipes:pipe_transport_basic> * 8, 
[[<ore:stickSteel>, <ore:wireGtSingleRedAlloy>, <ore:stickSteel>],
[<ore:stickSteel>, <metaitem:component.glass.tube>, <ore:stickSteel>], 
[<ore:stickSteel>, <ore:wireGtSingleRedAlloy>, <ore:stickSteel>]]);

#logistics pipe frames
recipes.remove(<logisticspipes:frame>);
	alloyer.recipeBuilder()
    .inputs(<gregtech:machine_casing:1>, <ore:foilRedAlloy>*2)
    .outputs(<logisticspipes:frame>)
    .duration(410)
    .EUt(16)
    .buildAndRegister();

#power junction
recipes.remove(<logisticspipes:power_junction>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:frame>, <ore:circuitBasic>, <thermalfoundation:material:513>*2)
		.outputs(<logisticspipes:power_junction>)
		.duration(240)
		.EUt(18)
		.buildAndRegister();
		
#Crafting Table
recipes.remove(<logisticspipes:crafting_table>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:frame>,<minecraft:crafting_table>,<ore:craftingPiston>*2, <ore:circuitBasic>)
		.outputs(<logisticspipes:crafting_table>)
		.duration(320)
		.EUt(24)
		.buildAndRegister();

#Fuzzy crafting table		
recipes.remove(<logisticspipes:crafting_table_fuzzy>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:crafting_table>, <logisticspipes:chip_basic>)
		.outputs(<logisticspipes:crafting_table_fuzzy>)
		.duration(48)
		.EUt(24)
		.buildAndRegister();
	
print("----------------Logistic Pipes End-------------------");
