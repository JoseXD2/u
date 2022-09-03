function onCreate()
	-- background shit
	makeLuaSprite('Brick3', 'EXE1/Brick3', -500, 0);
	scaleObject('Brick3',1.4,1);
	makeLuaSprite('Brick4','EXE1/Brick4',-500,-150);
	scaleObject('Brick4',1.4,1);
	makeLuaSprite('BricksBG1', 'EXE1/BricksBG1', -500, 0);
	scaleObject('BricksBG1',1.4,1);
	makeLuaSprite('Brick5', 'EXE1/Brick5', -375, 50);
	scaleObject('Brick5',1.4,1.4);
	makeLuaSprite('BricksBG2','EXE1/BricksBG2',-500,-150);
	scaleObject('BricksBG2',1.4,1);

	addLuaSprite('Brick3', false);
	addLuaSprite('Brick4', false);
	addLuaSprite('BricksBG1', false);
    addLuaSprite('Brick5', false);
	addLuaSprite('BricksBG2', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end