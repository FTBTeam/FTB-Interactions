import mods.contenttweaker.BlockPos;
import mods.zentriggers.PredicateBuilder;
import mods.zentriggers.Handler;
import mods.zentriggers.events.EntityLivingUpdateEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntityItem;
import crafttweaker.block.IMaterial;


print("---------------Zen Events Start------------------");

Handler.onEntityUpdate(
		PredicateBuilder.create()
			.isInBlockArea(<blockstate:animus:blockfluidantimatter>.block,3,3,3,3)
			.isInstanceOf("mightyenderchicken:ent_EnderChicken")
			.isRandom(0.1)
			.isNthTick(10)
			.isRemote()
			.negateLatest()
		,function(event as EntityLivingUpdateEvent){
		//print ("event triggered correctly for enderchicken");
		val neutron = <avaritia:resource:2>;
		if(isNull(neutron)) {
		print("neutron is null in event");
		return;
		}
		if(isNull(event.entity)){
		print("Entity is null in event");
		return;
		}
		event.entity.world.spawnEntity(neutron.createEntityItem(event.entity.world, event.entity.position));
		event.entityLivingBase.health -= 5;
	}
);
