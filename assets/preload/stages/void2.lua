function onCreate()

	makeLuaSprite('back', 'void/blanco', -2600, -1800); 
	setLuaSpriteScrollFactor('back', 1.0, 1.0);
	scaleObject('back', 7.1, 7.1);
	
	makeAnimatedLuaSprite('void', 'void/The_void', -800, 175);
	setLuaSpriteScrollFactor('void', 1.2 , 0.9);
	scaleObject('void', 3.5, 3.5);
	
	makeAnimatedLuaSprite('pillars', 'void/Pillar_BG_Stage', -920, -855);
	setLuaSpriteScrollFactor('pillars', 1.2 , 1.0);
	scaleObject('pillars', 1.3, 1.3);
	makeAnimatedLuaSprite('gf', 'void/GF_rock', 949, -205);
	setLuaSpriteScrollFactor('gf', 1.1 , 0.9);
	scaleObject('gf', 1.0, 1.0);
	
	makeAnimatedLuaSprite('piso', 'void/LoudSpeaker_Moving', -309, 775);
	setLuaSpriteScrollFactor('piso', 1.0 , 1.0);
	scaleObject('piso', 1.05, 1.05);
	
	makeLuaSprite('bocina', 'void/Void_Back', -240, -150); 
	setLuaSpriteScrollFactor('bocina', 1.0, 1.0);
	scaleObject('bocina', 0.7, 0.7);
	
	
    setTextSize('watermark',18);
    addLuaText('watermark');

	addLuaSprite('back', false);
	addLuaSprite('void', false);
    addAnimationByPrefix('void','idle','VoidShift',20, true);
    addLuaSprite('pillars', false);
    addAnimationByPrefix('pillars','idle','Pillar_BG_Stage',20, true);
    addLuaSprite('gf', false);
    addAnimationByPrefix('gf','idle','GF Dancing Beat Hair blowing',20, true);
    addLuaSprite('piso', false);
    addAnimationByPrefix('piso', 'idle', 'StereoMoving',20, true);
    

   

end

function onUpdate(elapsed)

        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/50)
setCharacterY('gf',getCharacterY('gf') + (math.sin(currentBeat) * 0.2))


end