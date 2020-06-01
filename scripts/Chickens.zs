import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("---------------Chickens Start------------------");


var itemsDisabled as IItemStack[] = [
	<chickens:colored_egg:15>,
	<chickens:colored_egg:4>,
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:emeraldchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:rubychicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:tungstenchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:topazchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:redstonechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:tanzanitechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:cobaltchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:osmiumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:enderiumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:silverorechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:bluechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:platinumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:sapphirechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:nickelchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:tinchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:goldchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:aluminumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:diamondchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:siliconchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:ironchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:uraniumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:copperchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:arditechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:quartzchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:titaniumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:sulfurchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:zincchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:coalchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:iridiumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:boopbeepchick"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:mramericanchick"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:funwaychick"}})
];

for i in itemsDisabled {
	mods.jei.JEI.removeAndHide(i);
}

val metallum = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "metallum"}]});
val vitreus = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vitreus"}]});
val perditio = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "perditio"}]});
val bindingReagent = <bloodmagic:component:8>;
val voidCrystal = <actuallyadditions:item_crystal:3>;
val water = <botania:rune>;
val fire = <botania:rune:1>;
val earth = <botania:rune:2>;
val air = <botania:rune:3>;
val spring = <botania:rune:4>;
val summer = <botania:rune:5>;
val autumn = <botania:rune:6>;
val winter = <botania:rune:7>;
val mana = <botania:rune:8>;
val lust = <botania:rune:9>;
val gluttony = <botania:rune:10>;
val greed = <botania:rune:11>;
val sloth = <botania:rune:12>;
val wrath = <botania:rune:13>;
val envy = <botania:rune:14>;
val pride = <botania:rune:15>;


var eggRecipeMap as IItemStack[][string] = {
	"contenttweaker:apatitechicken" : [vitreus, sloth],
	"contenttweaker:graphitechicken" : [perditio, water]
};

		
	


print("---------------Chickens End------------------");