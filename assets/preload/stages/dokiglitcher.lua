function onCreate()

	makeLuaSprite('bodega', 'Festival/Back', -540, -320); 
	setLuaSpriteScrollFactor('bodega', 1.1, 1.1);
	scaleObject('bodega', 1.85, 1.85);
	
	makeLuaSprite('salon', 'Festival/BG', -540, -320); 
	setLuaSpriteScrollFactor('salon', 1.0, 1.0);
	scaleObject('salon', 1.85, 1.85);
	
	makeLuaSprite('banderas', 'Festival/FestivalBanner', -40, 0); 
	setLuaSpriteScrollFactor('banderas', 1.0, 1.0);
	scaleObject('banderas', 1.3, 1.3);
	
	makeAnimatedLuaSprite('luces', 'Festival/lights_back', 639, 490);
	setLuaSpriteScrollFactor('luces', 1.0, 1.0);
	scaleObject('luces', 1.46, 1.46);
	
	makeAnimatedLuaSprite('yuri', 'Festival/Yuri', 1470, 505);
	setLuaSpriteScrollFactor('yuri', 1.0 , 1.0);
	scaleObject('yuri', 0.76, 0.76);
	
	makeAnimatedLuaSprite('nat', 'DokiClub/natsuki', 1720, 625);
	setLuaSpriteScrollFactor('nat', 1.0 , 1.0);
	scaleObject('nat', 0.7, 0.7);
	
	makeAnimatedLuaSprite('potra', 'Festival/protag', 710, 425);
	setLuaSpriteScrollFactor('potra', 1.0 , 1.0);
	scaleObject('potra', 0.78, 0.78);
	
	makeAnimatedLuaSprite('sayori', 'Festival/Sayori', 170, 495);
	setLuaSpriteScrollFactor('sayori', 1.0 , 1.0);
	scaleObject('sayori', 0.8, 0.8);
	
	makeLuaSprite('sillas', 'Festival/DesksFestival', -300, -280);     
	setLuaSpriteScrollFactor('sillas', 1.4, 0.9);
	scaleObject('sillas', 1.7, 1.7);
	
	makeAnimatedLuaSprite('luces1', 'Festival/lights_front', -700, 840);
	setLuaSpriteScrollFactor('luces1', 1.0, 1.0);
	scaleObject('luces1', 1.3, 1.3);
	
	makeLuaSprite('overlay', 'Festival/vignette', -4000, 110); 
	setLuaSpriteScrollFactor('overlay', 1.0, 1.0);
	scaleObject('overlay', 8.85, 8.85);
	
	makeLuaSprite('ski', 'Monikaweek/weebSky', 40, 220); 
	setLuaSpriteScrollFactor('ski', 1.1, 1.1);
	scaleObject('ski', 6.0, 6.0);
	
	makeLuaSprite('scho', 'Monikaweek/weebSchool', 40, 220); 
	setLuaSpriteScrollFactor('scho', 1.0, 1.0);
	scaleObject('scho', 6.0, 6.0);
	
	makeLuaSprite('piso', 'Monikaweek/weebStreet', 40, 220);
	setLuaSpriteScrollFactor('piso', 1.0 , 1.0);
	scaleObject('piso', 6.0, 6.0);
	
	makeAnimatedLuaSprite('arbol', 'Monikaweek/weebTrees2', 0, 190);
	setLuaSpriteScrollFactor('arbol', 1.0 , 1.0);
	scaleObject('arbol', 6.0, 6.0);
	
	makeLuaSprite('ol', 'Monikaweek/weebTreesBack', 50, 240);
	setLuaSpriteScrollFactor('ol', 1.0 , 1.0);
	scaleObject('ol', 6.0, 6.0);
	
	makeAnimatedLuaSprite('petalos', 'Monikaweek/petals', 50, 240);
	setLuaSpriteScrollFactor('petalos', 1.0 , 1.0);
	scaleObject('petalos', 6.0, 6.0);
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	
	addLuaSprite('bodega', false);
	addLuaSprite('salon', false);
	addLuaSprite('banderas', false);
	addLuaSprite('luces', false);
    addAnimationByPrefix('luces','idle','lights back',25, true);
	addLuaSprite('sayori', false);
    addAnimationByPrefix('sayori','idle','Sayori BG',25, true);
    addLuaSprite('nat', false);
    addAnimationByPrefix('nat','idle','Natsu BG',25, true);
    addLuaSprite('yuri', false);
    addAnimationByPrefix('yuri','idle','Yuri BG',25, true);
    addLuaSprite('potra', false);
    addAnimationByPrefix('potra','idle','Protag-kun BG',25, true);
    addLuaSprite('overlay', true);
    addLuaSprite('sillas', false);
    addLuaSprite('luces1', true);
    addAnimationByPrefix('luces1','idle','Lights front',35, true);
    
    addLuaSprite('ski', false);
	addLuaSprite('scho', false);
	addLuaSprite('piso', false);
	addLuaSprite('ol', false);
	addLuaSprite('arbol', false);
    addAnimationByPrefix('arbol','idle','weebTrees2 idle',15, true);
    addLuaSprite('petalos', false);
    addAnimationByPrefix('petalos','idle','PETALS ALL',15, true);
    
    setProperty('ski.visible', false);
    setProperty('scho.visible', false);
    setProperty('piso.visible', false);
    setProperty('ol.visible', false);
    setProperty('arbol.visible', false);
    setProperty('petalos.visible', false);
    triggerEvent('Change Character', 'dad', 'monika');
    triggerEvent('Change Character', 'bf', 'bf-pixel');
    triggerEvent('Change Character', 'gf', 'gf-pixel');
    
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'nopixel' then
    setProperty('bodega.visible', true);
    setProperty('salon.visible', true);
    setProperty('banderas.visible', true);
    setProperty('luces.visible', true);
    setProperty('sayori.visible', true);
    setProperty('nat.visible', true);
    setProperty('yuri.visible', true);
    setProperty('potra.visible', true);
    setProperty('overlay.visible', true);
    setProperty('sillas.visible', true);
    setProperty('luces1.visible', true);
    setProperty('scho.visible', false);
    setProperty('piso.visible', false);
    setProperty('ol.visible', false);
    setProperty('arbol.visible', false);
    setProperty('ski.visible', false);
    setProperty('petalos.visible', false);
    triggerEvent('Change Character', 'dad', 'monika-real');
    triggerEvent('Change Character', 'bf', 'bf-doki');
    triggerEvent('Change Character', 'gf', 'gf-realdoki');

		end
		
		if value1 == 'pixel' then
    setProperty('bodega.visible', false);
    setProperty('salon.visible', false);
    setProperty('banderas.visible', false);
    setProperty('luces.visible', false);
    setProperty('sayori.visible', false);
    setProperty('nat.visible', false);
    setProperty('yuri.visible', false);
    setProperty('potra.visible', false);
    setProperty('overlay.visible', false);
    setProperty('sillas.visible', false);
    setProperty('luces1.visible', false);
    setProperty('scho.visible', true);
    setProperty('piso.visible', true);
    setProperty('ol.visible', true);
    setProperty('arbol.visible', true);
    setProperty('ski.visible', true);
    setProperty('petalos.visible', true);
    triggerEvent('Change Character', 'dad', 'monika2');
    triggerEvent('Change Character', 'bf', 'bf-pixel');
    triggerEvent('Change Character', 'gf', 'gf-pixel');

		end

		if value1 == 'Nombre De La Animacion Aqui' then
    setProperty('sky2.visible', false);
    setProperty('back2.visible', false);
    setProperty('luz2.visible', false);

		end

	end
end