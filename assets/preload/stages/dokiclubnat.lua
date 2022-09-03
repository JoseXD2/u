function onCreate()

	makeLuaSprite('bodega', 'DokiClub/DDLCfarbg', -540, -320); 
	setLuaSpriteScrollFactor('bodega', 1.1, 1.1);
	scaleObject('bodega', 1.85, 1.85);
	
	makeLuaSprite('salon', 'DokiClub/DDLCbg', -540, -320); 
	setLuaSpriteScrollFactor('salon', 1.0, 1.0);
	scaleObject('salon', 1.85, 1.85);
	
	makeAnimatedLuaSprite('sayori', 'DokiClub/Sayori', 1530, 575);
	setLuaSpriteScrollFactor('sayori', 1.0 , 1.0);
	scaleObject('sayori', 0.75, 0.75);
	
	makeAnimatedLuaSprite('yuri', 'DokiClub/Yuri', 400, 495);
	setLuaSpriteScrollFactor('yuri', 1.0 , 1.0);
	scaleObject('yuri', 0.8, 0.8);
	
	makeLuaSprite('sillas', 'DokiClub/DesksFront', -300, -280);     setLuaSpriteScrollFactor('sillas', 1.4, 0.9);
	scaleObject('sillas', 1.7, 1.7);
	
	makeAnimatedLuaSprite('baka', 'DokiClub/BakaBGDoodles', -20, -15);
	setLuaSpriteScrollFactor('baka', 1.0 , 1.0);
	scaleObject('baka', 2, 2);
	setObjectCamera('baka', 'hud');
	runTimer('baka', 5.0, 1);
	
	makeAnimatedLuaSprite('baka2', 'DokiClub/BakaBGDoodles', -20, -15);
	setLuaSpriteScrollFactor('baka2', 1.0 , 1.0);
	scaleObject('baka2', 2.0, 2.0);
	setObjectCamera('baka2', 'hud');
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	addLuaSprite('bodega', false);
	addLuaSprite('salon', false);
	addLuaSprite('sayori', false);
    addAnimationByPrefix('sayori','idle','Sayori BG',25, true);
    addLuaSprite('yuri', false);
    addAnimationByPrefix('yuri','idle','Yuri BG',25, true);
    addLuaSprite('sillas', true);
    addLuaSprite('baka', false);
    addAnimationByPrefix('baka','idle','Normal Overlay',25, true);
    addLuaSprite('baka2', false);
    addAnimationByPrefix('baka2','idle','Rock Overlay',25, true);
    
    setProperty('baka2.visible', false);
    setProperty('baka.visible', false);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'normalbaka' then
    setProperty('baka.visible', true);
    setProperty('baka2.visible', false);

		end
		
		if value1 == 'rockbaka' then
    setProperty('baka.visible', false);
    setProperty('baka2.visible', true);

		end

		if value1 == 'nobaka' then
    setProperty('baka.visible', false);
    setProperty('baka2.visible', false);

		end

	end
end