import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

print("---------------Gregtech Start------------------");
	var infusedFuel = mods.gregtech.recipe.FuelRecipe.create(<liquid:infused_nitrofuel> *2, 15, 128);
	RecipeMaps.DIESEL_GENERATOR_FUELS.addRecipe(infusedFuel);
	
print("----------------Gregtech End-------------------");

