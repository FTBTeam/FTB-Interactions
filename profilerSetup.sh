cp -r ./scripts ./scriptz; # safety measure

for file in ./scripts/*.zs; do
	# file=./scripts/_Global.zs # testing
	perl -i.bak -0pe "s/((?:import.*\n)+)/\1import mods.zentriggers.Profiler;\nProfiler.start(\"$(basename $file)\");\n/" $file;
	printf "\nprint(\"$(basename $file) took \" + Profiler.finish(\"$(basename $file)\"));\n" >> $file;
	echo "Mutated $file";
done

for file in ./scripts/modular_machinery/*.zs; do
	# file=./scripts/_Global.zs # testing
	perl -i.bak -0pe "s/((?:import.*\n)+)/\1import mods.zentriggers.Profiler;\nProfiler.start(\"$(basename $file)\");\n/" $file;
	printf "\nprint(\"$(basename $file) took \" + Profiler.finish(\"$(basename $file)\"));\n" >> $file;
	echo "Mutated $file";
done

rm ./scripts/*.bak;
rm ./scripts/modular_machinery/*.bak;