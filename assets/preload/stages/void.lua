function onCreate()

	makeLuaSprite('back', 'void/blanco', -2600, -1800); 
	setLuaSpriteScrollFactor('back', 1.0, 1.0);
	scaleObject('back', 5.1, 5.1);
	
	makeAnimatedLuaSprite('void', 'void/The_void', -800, -275);
	setLuaSpriteScrollFactor('void', 1.1 , 1.1);
	scaleObject('void', 3.5, 3.5);
	
	makeLuaSprite('piso', 'void/Void_Front', -709, -475);
	setLuaSpriteScrollFactor('piso', 1.0 , 1.0);
	scaleObject('piso', 1.1, 1.1);
	
	makeLuaSprite('bocina', 'void/Void_Back', -240, -150); 
	setLuaSpriteScrollFactor('bocina', 1.0, 1.0);
	scaleObject('bocina', 0.7, 0.7);
	
	
    setTextSize('watermark',18);
    addLuaText('watermark');

	addLuaSprite('back', false);
    addLuaSprite('void', false);
    addAnimationByPrefix('void','idle','VoidShift',20, true);
    addLuaSprite('piso', false);
    addLuaSprite('bocina', false);

   

end

function onUpdate(elapsed)

        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/50)
setCharacterY('gf',getCharacterY('gf') + (math.sin(currentBeat) * 0.2))


end