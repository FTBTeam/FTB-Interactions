import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");

print("---------------Nether backport Start------------------");

recipes.remove(<netherbackport:netheritesword>);
recipes.remove(<netherbackport:netheritearmorbody>);
recipes.remove(<netherbackport:netheritearmorlegs>);
recipes.remove(<netherbackport:netheritearmorboots>);
recipes.remove(<netherbackport:netheritearmorhelmet>);
recipes.remove(<netherbackport:netheriteingot>);


//Don't touch me!
//#Add




	#Netherrite Ingot
	alloyer.recipeBuilder()
    .inputs(<ore:ingotDemonicMetal>*4, <netherbackport:netheritescrap>)
    .outputs(<netherbackport:netheriteingot>)
    .duration(80)
    .EUt(42)
    .buildAndRegister();	

	#Higher yield netherrite processing
	mods.astralsorcery.StarlightInfusion.addInfusion(<netherbackport:ancientdebris>, <netherbackport:netheritescrap>*4, false, 0.4, 200);

	#Gold ore from Nether gold ore
	mods.astralsorcery.LightTransmutation.addTransmutation(<netherbackport:nethergoldore>, <ore:oreGold>.firstItem, 250);

	#Enchanted Netherite Boots
recipes.addShaped(<netherbackport:netheritearmorboots>.withTag({ench: [{lvl: 2 as short, id: 63 as short}], RepairCost: 1}), [[<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem],[<netherbackport:netheriteingot>, <minecraft:iron_boots>, <netherbackport:netheriteingot>], [<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem]]);

	#Enchanted Netherite Leggings
recipes.addShaped(<netherbackport:netheritearmorlegs>.withTag({ench: [{lvl: 2 as short, id: 63 as short}], RepairCost: 1}), [[<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem],[<netherbackport:netheriteingot>, <minecraft:iron_leggings>, <netherbackport:netheriteingot>], [<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem]]);

	#Enchanted Netherite Chest
recipes.addShaped(<netherbackport:netheritearmorbody>.withTag({ench: [{lvl: 2 as short, id: 63 as short}], RepairCost: 1}), [[<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem],[<netherbackport:netheriteingot>, <minecraft:iron_chestplate>, <netherbackport:netheriteingot>], [<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem]]);

	#Enchanted Netherite Helmet
recipes.addShaped(<netherbackport:netheritearmorhelmet>.withTag({ench: [{lvl: 2 as short, id: 63 as short}], RepairCost: 1}), [[<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem],[<netherbackport:netheriteingot>, <minecraft:iron_helmet>, <netherbackport:netheriteingot>], [<ore:screwThaumium>.firstItem, <netherbackport:netheriteingot>, <ore:screwThaumium>.firstItem]]);

	#Enchanted Netherite Sword
recipes.addShaped(<netherbackport:netheritesword>, [[null, <netherbackport:netheriteingot>, null],[<netherbackport:netheriteingot>, <minecraft:diamond_sword>, <netherbackport:netheriteingot>], [null, <netherbackport:netheriteingot>, null]]);