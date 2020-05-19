import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.chisel.Carving;

print("---------------Chisel Start------------------");

	#remove Zest, will become portal Block
mods.chisel.Carving.removeVariation("zest", <xtones:zest:4>);
mods.chisel.Carving.removeVariation("jelt", <xtones:jelt:15>);
mods.chisel.Carving.removeVariation("marble", <astralsorcery:blockmarble:6>);
	
	#remove block crafting
recipes.remove(<chisel:blockbronze>);
recipes.remove(<chisel:blockcobalt>);
recipes.remove(<chisel:blockcopper>);
recipes.remove(<chisel:diamond>);
recipes.remove(<chisel:blockelectrum>);
recipes.remove(<chisel:emerald>);
recipes.remove(<chisel:blockgold>);
recipes.remove(<chisel:blockinvar>);
recipes.remove(<chisel:lapis>);
recipes.remove(<chisel:blocklead>);
recipes.remove(<chisel:blocknickel>);
recipes.remove(<chisel:blockplatinum>);
recipes.remove(<chisel:redstone>);
recipes.remove(<chisel:blocksilver>);
recipes.remove(<chisel:blocksteel>);
recipes.remove(<chisel:blocktin>);
recipes.remove(<chisel:blockuranium>);
recipes.remove(<chisel:block_coal>);
recipes.remove(<chisel:block_charcoal>);

	#Letting Aluminium Blocks get Chiseled
furnace.addRecipe(<chisel:blockaluminum:2>, <ore:blockAluminium>);
furnace.addRecipe(<ore:blockAluminium>.firstItem, <chisel:blockaluminum:2>);

print("----------------Chisel End-------------------");