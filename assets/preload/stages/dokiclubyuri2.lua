function onCreate()

	makeLuaSprite('bodega', 'DokiClub/DDLCfarbg', -540, -320); 
	setLuaSpriteScrollFactor('bodega', 1.1, 1.1);
	scaleObject('bodega', 1.85, 1.85);
	
	makeLuaSprite('salon', 'DokiClub/DDLCbg', -540, -320); 
	setLuaSpriteScrollFactor('salon', 1.0, 1.0);
	scaleObject('salon', 1.85, 1.85);
	
	makeLuaSprite('sillas', 'DokiClub/DesksFront', -300, -280);     setLuaSpriteScrollFactor('sillas', 1.4, 0.9);
	scaleObject('sillas', 1.7, 1.7);
	
	makeAnimatedLuaSprite('overlay', 'DokiClub/staticshock', 00, -1);     
	setLuaSpriteScrollFactor('overlay', 1.0, 1.0);
	scaleObject('overlay', 1.02, 1.02);
	setObjectCamera('overlay', 'other');
	setProperty('overlay.alpha',0.10);
	
	makeAnimatedLuaSprite('overlay1', 'DokiClub/staticshock', 00, -1);     
	setLuaSpriteScrollFactor('overlay1', 1.0, 1.0);
	scaleObject('overlay1', 1.02, 1.02);
	setObjectCamera('overlay1', 'other');
	setProperty('overlay1.alpha',0.15);
	
	makeAnimatedLuaSprite('overlay2', 'DokiClub/staticshock', 00, -1);     
	setLuaSpriteScrollFactor('overlay2', 1.0, 1.0);
	scaleObject('overlay2', 1.02, 1.02);
	setObjectCamera('overlay2', 'other');
	setProperty('overlay2.alpha',0.25);
	
	makeAnimatedLuaSprite('overlay3', 'DokiClub/staticshock', 00, -1);     
	setLuaSpriteScrollFactor('overlay3', 1.0, 1.0);
	scaleObject('overlay3', 1.02, 1.02);
	setObjectCamera('overlay3', 'other');
	setProperty('overlay3.alpha',0.30);
	
	makeAnimatedLuaSprite('overlay4', 'DokiClub/staticshock', 00, -1);     
	setLuaSpriteScrollFactor('overlay4', 1.0, 1.0);
	scaleObject('overlay4', 1.02, 1.02);
	setObjectCamera('overlay4', 'other');
	setProperty('overlay4.alpha',0.40);
	
	makeAnimatedLuaSprite('overlay5', 'DokiClub/staticshock', 00, -1);     
	setLuaSpriteScrollFactor('overlay5', 1.0, 1.0);
	scaleObject('overlay5', 1.02, 1.02);
	setObjectCamera('overlay5', 'other');
	setProperty('overlay5.alpha',0.45);
	
	makeLuaSprite('nigga', 'DokiClub/nigga', -240, 20); 
	setLuaSpriteScrollFactor('nigga', 1.0, 1.0);
	scaleObject('nigga', 2.85, 2.85);
	
	makeLuaSprite('foco', 'DokiClub/vignette', 0, 0); 
	setLuaSpriteScrollFactor('foco', 1.0, 1.0);
	scaleObject('foco', 1.02, 1.02);
	setObjectCamera('foco', 'hud');
	setProperty('foco.alpha',0.50);
	
	makeLuaSprite('foco2', 'DokiClub/vignette', 0, 0); 
	setLuaSpriteScrollFactor('foco2', 1.0, 1.0);
	scaleObject('foco2', 1.02, 1.02);
	setObjectCamera('foco2', 'other');
	setProperty('foco2.alpha',0.35);
	
	makeAnimatedLuaSprite('gfbug', 'DokiClub/gfdokido', 800, 520);     
	setLuaSpriteScrollFactor('gfbug', 1.0, 1.0);
	scaleObject('gfbug', 1.0, 1.0);
	
	makeLuaSprite('nigga2', 'DokiClub/nigga', -40, 190); 
	setLuaSpriteScrollFactor('nigga', 1.0, 1.0);
	scaleObject('nigga2', 2.85, 2.85);
	setProperty('nigga2.alpha',0.85);
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	addLuaSprite('bodega', false);
	addLuaSprite('salon', false);
    addLuaSprite('sillas', true);
    addLuaSprite('overlay', false);
    addAnimationByPrefix('overlay','idle','hueh',25, true);
    addLuaSprite('overlay1', false);
    addAnimationByPrefix('overlay1','idle','hueh',25, true);
    addLuaSprite('overlay2', false);
    addAnimationByPrefix('overlay2','idle','hueh',25, true);
    addLuaSprite('overlay3', false);
    addAnimationByPrefix('overlay3','idle','hueh',25, true);
    addLuaSprite('overlay4', false);
    addAnimationByPrefix('overlay4','idle','hueh',25, true);
    addLuaSprite('overlay5', false);
    addAnimationByPrefix('overlay5','idle','hueh',25, true);
    addLuaSprite('nigga', true);
    addLuaSprite('foco', true);
    addLuaSprite('gfbug', false);
    addAnimationByPrefix('gfbug','idle','GF NECKSNAP',35, true);
    addLuaSprite('nigga2', false);
    
    setProperty('overlay.visible', false);
    setProperty('overlay1.visible', false);
    setProperty('overlay2.visible', false);
    setProperty('overlay3.visible', false);
    setProperty('overlay4.visible', false);
    setProperty('overlay5.visible', false);
    setProperty('nigga.visible', false);
    setProperty('nigga2.visible', false);
    setProperty('gfbug.visible', false);
    setProperty('foco.visible', false);
    setProperty('foco2.visible', false);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'uno' then
    setProperty('overlay.visible', true);

		end
		
		if value1 == 'dos' then
    setProperty('overlay1.visible', true);

		end
		
		if value1 == 'tres' then
    setProperty('overlay2.visible', true);

		end

		if value1 == 'negro' then
    setProperty('nigga.visible', true);
    setProperty('overlay5.visible', false);
    setProperty('overlay.visible', false);
    setProperty('overlay1.visible', false);
    setProperty('overlay2.visible', false);
    setProperty('overlay3.visible', false);
    setProperty('overlay4.visible', false);
    triggerEvent('Change Character', 'dad', 'yuricrazy');
    triggerEvent('Change Character', 'bf', 'bf-doki2');
    triggerEvent('Change Character', 'gf', 'no');
    
        end
		
		if value1 == 'cuatro' then
    setProperty('overlay3.visible', true);

		end

		if value1 == 'cinco' then
    setProperty('overlay4.visible', true);
    
        end

		if value1 == 'drop' then
    setProperty('overlay.visible', false);
    setProperty('overlay1.visible', false);
    setProperty('overlay2.visible', false);
    setProperty('overlay3.visible', false);
    setProperty('overlay4.visible', false);
    setProperty('overlay5.visible', false);
    setProperty('nigga.visible', false);
    setProperty('nigga2.visible', true);
    setProperty('gfbug.visible', true);
    setProperty('foco.visible', true);
    setProperty('foco2.visible', true);

		end

	end
end