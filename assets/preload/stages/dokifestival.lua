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
	
	makeAnimatedLuaSprite('monika', 'Festival/monika', 1620, 455);
	setLuaSpriteScrollFactor('monika', 1.0 , 1.0);
	scaleObject('monika', 0.76, 0.76);
	
	makeAnimatedLuaSprite('nat', 'DokiClub/natsuki', 1470, 625);
	setLuaSpriteScrollFactor('nat', 1.0 , 1.0);
	scaleObject('nat', 0.7, 0.7);
	
	makeAnimatedLuaSprite('potra', 'Festival/protag', 700, 465);
	setLuaSpriteScrollFactor('potra', 1.0 , 1.0);
	scaleObject('potra', 0.78, 0.78);
	
	makeAnimatedLuaSprite('yuri', 'Festival/Yuri', 170, 495);
	setLuaSpriteScrollFactor('yuri', 1.0 , 1.0);
	scaleObject('yuri', 0.8, 0.8);
	
	makeLuaSprite('sillas', 'Festival/DesksFestival', -300, -280);     
	setLuaSpriteScrollFactor('sillas', 1.4, 0.9);
	scaleObject('sillas', 1.7, 1.7);
	
	makeAnimatedLuaSprite('luces1', 'Festival/lights_front', -700, 840);
	setLuaSpriteScrollFactor('luces1', 1.0, 1.0);
	scaleObject('luces1', 1.3, 1.3);
	
	makeLuaSprite('overlay', 'Festival/vignette', -4000, 110); 
	setLuaSpriteScrollFactor('overlay', 1.0, 1.0);
	scaleObject('overlay', 8.85, 8.85);
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	addLuaSprite('bodega', false);
	addLuaSprite('salon', false);
	addLuaSprite('banderas', false);
	addLuaSprite('luces', false);
    addAnimationByPrefix('luces','idle','lights back',25, true);
	addLuaSprite('sayori', false);
    addAnimationByPrefix('sayori','idle','Sayori BG',25, true);
    addLuaSprite('monika', false);
    addAnimationByPrefix('monika','idle','Moni BG',25, true);
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
    
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'nombre De La AnimaciOn Aqui' then
    setProperty('sky2.visible', true);
    setProperty('back2.visible', true);

		end
		
		if value1 == 'nOmbre De La Animacion Aqui' then
    setProperty('sky2.visible', false);
    setProperty('back2.visible', false);
    setProperty('publico.visible', false);

		end

		if value1 == 'Nombre De La Animacion Aqui' then
    setProperty('sky2.visible', false);
    setProperty('back2.visible', false);
    setProperty('luz2.visible', false);

		end

	end
end