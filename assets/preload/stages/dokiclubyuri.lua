function onCreate()

	makeLuaSprite('bodega', 'DokiClub/DDLCfarbg', -540, -320); 
	setLuaSpriteScrollFactor('bodega', 1.1, 1.1);
	scaleObject('bodega', 1.85, 1.85);
	
	makeLuaSprite('salon', 'DokiClub/DDLCbg', -540, -320); 
	setLuaSpriteScrollFactor('salon', 1.0, 1.0);
	scaleObject('salon', 1.85, 1.85);
	
	makeAnimatedLuaSprite('sayori', 'DokiClub/Sayori', 230, 580);
	setLuaSpriteScrollFactor('sayori', 1.0 , 1.0);
	scaleObject('sayori', 0.75, 0.75);
	
	makeAnimatedLuaSprite('nat', 'DokiClub/natsuki', 1580, 625);
	setLuaSpriteScrollFactor('nat', 1.0 , 1.0);
	scaleObject('nat', 0.7, 0.7);
	
	makeLuaSprite('sillas', 'DokiClub/DesksFront', -300, -280);     setLuaSpriteScrollFactor('sillas', 1.4, 0.9);
	scaleObject('sillas', 1.7, 1.7);
	
	makeLuaSprite('estrellas', 'DokiClub/YuriSparkleBG', 00, 80);     setLuaSpriteScrollFactor('estrellas', 1.0, 1.0);
	scaleObject('estrellas', 2, 2);
	setObjectCamera('estrellas', 'hud');
	doTweenX('estrellas', 'estrellas' , -6500 , 400, leftOut);
	
	makeLuaSprite('estrellas2', 'DokiClub/YuriSparkleFG', 100, 80);     setLuaSpriteScrollFactor('estrellas', 1.0, 1.0);
	scaleObject('estrellas', 2, 2);
	setObjectCamera('estrellas2', 'hud');
	doTweenX('estrellas2', 'estrellas2' , -4500 , 400, leftOut);
	
	makeLuaSprite('overlay', 'DokiClub/overlay', -300, -80);     setLuaSpriteScrollFactor('overlay', 1.0, 1.0);
	scaleObject('overlay', 1.0, 1.0);
	setObjectCamera('overlay', 'hud');
	setProperty('overlay.alpha',0.25);
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	addLuaSprite('bodega', false);
	addLuaSprite('salon', false);
	addLuaSprite('sayori', false);
    addAnimationByPrefix('sayori','idle','Sayori BG',25, true);
    addLuaSprite('nat', false);
    addAnimationByPrefix('nat','idle','Natsu BG',25, true);
    addLuaSprite('sillas', true);
    addLuaSprite('estrellas', false);
	addLuaSprite('estrellas2', false);
	addLuaSprite('overlay', true);
	
	setProperty('estrellas.visible', false);
    setProperty('estrellas2.visible', false);
    setProperty('overlay.visible', false);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'brillos' then
    setProperty('estrellas.visible', true);
    setProperty('estrellas2.visible', true);
    setProperty('overlay.visible',true);

		end
		
		if value1 == 'nobrillos' then
    setProperty('estrellas.visible', false);
    setProperty('estrellas2.visible', false);
    setProperty('overlay.visible', false);

		end

		if value1 == 'Nombre De La Animacion Aqui' then
    setProperty('sky2.visible', false);
    setProperty('back2.visible', false);
    setProperty('luz2.visible', false);

		end

	end
end