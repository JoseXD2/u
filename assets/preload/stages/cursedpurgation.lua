--Last Edited 10/12/21 by SaturnSpades
--Tricky mod credits will be put here temporarily until in-game credits can be modified within Lua
--Tricky Mod Developers: Banbuds, Rosebud, KadeDev, CVal, YingYang48, JADS, Moro
--Special Thanks: Tom Fulp, Krinkels, GWebDev, Tsuraran
function onCreate()
	--Create Background sprites
	makeLuaSprite('bg2', 'bg2', -1200, -650);
	setLuaSpriteScrollFactor('bg2', 0.9);

	makeLuaSprite('Energywall2', 'Energywall2', 1200, -200);

	makeLuaSprite('Spawnhole_Ground_BACK', 'Spawnhole_Ground_BACK', 80, 820);

	makeLuaSprite('Spawnhole_Ground_COVER', 'Spawnhole_Ground_COVER', 30, 845);
	
	makeLuaSprite('exback2', 'exback2', -650, -200);

	makeLuaSprite('exbackcover2', 'exbackcover2', -93, 870);
	--setLuaSpriteScrollFactor('exback2', 0.9, 0.9);
	--scaleLuaSprite('expurgationback', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--Low Quality mode not yet implemented
	end

	addLuaSprite('bg2', false);
	addLuaSprite('Energywall2', false);
	addLuaSprite('exback2', false);
	addLuaSprite('exbackcover2', true);
	addLuaSprite('Spawnhole_Ground_BACK', false);
	addLuaSprite('Spawnhole_Ground_COVER', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end