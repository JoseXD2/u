function onCreate()
	-- background shit
	makeLuaSprite('Race_Mario_BG2','Races/Race_Mario_BG2',-325,0);
	makeLuaSprite('Race_Mario_BG3','Races/Race_Mario_BG3',-525,-100);
	makeAnimatedLuaSprite('Race_Mario_BG1', 'Races/Race_Mario_BG1', -500, -350);
	addAnimationByPrefix('Race_Mario_BG1','idle','Ground',24,true);
	scaleObject('Race_Mario_BG1',1.4,1.4);
	scaleObject('Race_Mario_BG2',1.4,1);
	scaleObject('Race_Mario_BG3',1.25,1);
    
	addLuaSprite('Race_Mario_BG2',false);
	addLuaSprite('Race_Mario_BG3',false);
	addLuaSprite('Race_Mario_BG1', false);
	playObjectAnimation('Race_Mario_BG1','idle',true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end