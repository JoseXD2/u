function onCreate()

	makeLuaSprite('ski', 'Monikaweek/weebSky', -240, -120); 
	setLuaSpriteScrollFactor('ski', 1.1, 1.1);
	scaleObject('ski', 6.0, 6.0);
	
	makeLuaSprite('scho', 'Monikaweek/weebSchool', -240, -120); 
	setLuaSpriteScrollFactor('scho', 1.0, 1.0);
	scaleObject('scho', 6.0, 6.0);
	
	makeLuaSprite('piso', 'Monikaweek/weebStreet', -240, -120);
	setLuaSpriteScrollFactor('piso', 1.0 , 1.0);
	scaleObject('piso', 6.0, 6.0);
	
	makeAnimatedLuaSprite('arbol', 'Monikaweek/weebTrees2', -250, -140);
	setLuaSpriteScrollFactor('arbol', 1.0 , 1.0);
	scaleObject('arbol', 6.0, 6.0);
	
	makeLuaSprite('ol', 'Monikaweek/weebTreesBack', -250, -140);
	setLuaSpriteScrollFactor('ol', 1.0 , 1.0);
	scaleObject('ol', 6.0, 6.0);
	
	makeAnimatedLuaSprite('petalos', 'Monikaweek/petals', -250, -140);
	setLuaSpriteScrollFactor('petalos', 1.0 , 1.0);
	scaleObject('petalos', 6.0, 6.0);
	
	makeAnimatedLuaSprite('nenas', 'Monikaweek/bgFreaks', -250, 50);
	setLuaSpriteScrollFactor('nenas', 1.0 , 1.0);
	scaleObject('nenas', 6.0, 6.0);
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	addLuaSprite('ski', false);
	addLuaSprite('scho', false);
	addLuaSprite('piso', false);
	addLuaSprite('ol', false);
	addLuaSprite('arbol', false);
    addAnimationByPrefix('arbol','idle','weebTrees2 idle',15, true);
    addLuaSprite('petalos', false);
    addAnimationByPrefix('petalos','idle','PETALS ALL',15, true);
    addLuaSprite('nenas', false);
    addAnimationByPrefix('nenas','idle','BG fangirls dissuaded',25, true);
    

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