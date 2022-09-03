function onCreate()

	makeLuaSprite('sky', 'demisepixel/pixelsky', -540, 290); 
	setLuaSpriteScrollFactor('sky', 1.0, 1.0);
	doTweenX('sky', 'sky' , -5500 , 400, leftOut);
	scaleObject('sky', 1.15, 1.15);
	
	makeLuaSprite('sky2', 'demisepixel/pixelsky', 1090, 290); 
	setLuaSpriteScrollFactor('sky2', 1.0, 1.0);
	doTweenX('sky2', 'sky2' , -5500 , 400, leftOut);
	scaleObject('sky2', 1.15, 1.15);
	
	makeLuaSprite('sky3', 'demisepixel/pixelsky', 2640, 290); 
	setLuaSpriteScrollFactor('sky3', 1.0, 1.0);
	doTweenX('sky3', 'sky3' , -5500 , 400, leftOut);
	scaleObject('sky3', 1.15, 1.15)
	
	makeLuaSprite('club', 'demisepixel/finalbg', -460, 200); 
	setLuaSpriteScrollFactor('club', 1.0, 1.0);
	scaleObject('club', 2, 2);
	makeLuaSprite('mesa', 'demisepixel/pixelfg', -160, 300); 
	setLuaSpriteScrollFactor('mesa', 1.0, 1.0);
	scaleObject('mesa', 1.2, 1.2);
	
	makeLuaSprite('nigga', 'demisepixel/nigga', -240, 20); 
	setLuaSpriteScrollFactor('nigga', 1.0, 1.0);
	scaleObject('nigga', 2.85, 2.85);
    setTextSize('watermark',18);
    addLuaText('watermark');

	
	addLuaSprite('sky', false);
	addLuaSprite('sky2', false);
	addLuaSprite('sky3', false);
	addLuaSprite('club', false);
	addLuaSprite('mesa', false);
	addLuaSprite('nigga', true);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'vista' then
    setProperty('nigga.visible', false);

		end
		
		if value1 == 'novista' then
    setProperty('nigga.visible', true);

		end

		if value1 == 'Nombre De La Animacion Aqui' then
    setProperty('sky2.visible', false);
    setProperty('back2.visible', false);
    setProperty('luz2.visible', false);

		end

	end
end