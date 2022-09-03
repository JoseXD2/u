function onCreate()

	makeLuaSprite('bodega', 'DokiClub/DDLCfarbg', -540, -320); 
	setLuaSpriteScrollFactor('bodega', 1.1, 1.1);
	scaleObject('bodega', 1.85, 1.85);
	
	makeLuaSprite('salon', 'DokiClub/DDLCbg', -540, -320); 
	setLuaSpriteScrollFactor('salon', 1.0, 1.0);
	scaleObject('salon', 1.85, 1.85);
	
	makeAnimatedLuaSprite('nat', 'DokiClub/natsuki', 1580, 625);
	setLuaSpriteScrollFactor('nat', 1.0 , 1.0);
	scaleObject('nat', 0.7, 0.7);
	
	makeAnimatedLuaSprite('yuri', 'DokiClub/Yuri', 170, 495);
	setLuaSpriteScrollFactor('yuri', 1.0 , 1.0);
	scaleObject('yuri', 0.8, 0.8);
	
	makeLuaSprite('sillas', 'DokiClub/DesksFront', -300, -280);     setLuaSpriteScrollFactor('sillas', 1.4, 0.9);
	scaleObject('sillas', 1.7, 1.7);
	
	makeLuaSprite('snake', 'DokiClub/vignette', -4790, 20); 
	setLuaSpriteScrollFactor('snake', 1.0, 1.0);
	scaleObject('snake', 5.55, 5.55);
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	addLuaSprite('bodega', false);
	addLuaSprite('salon', false);
	addLuaSprite('nat', false);
    addAnimationByPrefix('nat','idle','Natsu BG',25, true);
    addLuaSprite('yuri', false);
    addAnimationByPrefix('yuri','idle','Yuri BG',25, true);
    addLuaSprite('sillas', true);
    addLuaSprite('snake', true);
    
    setProperty('snake.visible', false);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'Snake' then
    setProperty('snake.visible', true);

		end
		
		if value1 == 'Normal' then
    setProperty('snake.visible', false);

		end

		if value1 == 'Nombre De La Animacion Aqui' then
    setProperty('sky2.visible', false);
    setProperty('back2.visible', false);
    setProperty('luz2.visible', false);

		end

	end
end