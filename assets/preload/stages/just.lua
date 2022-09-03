function onCreate()

	makeLuaSprite('sky', 'Justmonika/Sky', -540, 290); 
	setLuaSpriteScrollFactor('Sky', 1.0, 1.0);
	doTweenX('sky', 'sky' , -5500 , 400, leftOut);
	scaleObject('sky', 1.15, 1.15);
	
	makeLuaSprite('sky2', 'Justmonika/Sky', 1790, 290); 
	setLuaSpriteScrollFactor('sky2', 1.0, 1.0);
	doTweenX('sky2', 'sky2' , -5500 , 400, leftOut);
	scaleObject('sky2', 1.15, 1.15);
	
	makeLuaSprite('sky3', 'Justmonika/Sky', 2640, 290); 
	setLuaSpriteScrollFactor('sky3', 1.0, 1.0);
	doTweenX('sky3', 'sky3' , -5500 , 400, leftOut);
	scaleObject('sky3', 1.15, 1.15)

    makeLuaSprite('sky4', 'Justmonika/Sky', 3490, 290); 
	setLuaSpriteScrollFactor('sky4', 1.0, 1.0);
	doTweenX('sky4', 'sky4' , -5500 , 400, leftOut);
	scaleObject('sky4', 1.15, 1.15);
	
	makeLuaSprite('club', 'Justmonika/BG', -460, 200); 
	setLuaSpriteScrollFactor('club', 1.0, 1.0);
	scaleObject('club', 1.15, 1.15);
	makeLuaSprite('mesa', 'Justmonika/FG', -460, 250); 
	setLuaSpriteScrollFactor('mesa', 1.0, 1.0);
	scaleObject('mesa', 1.15, 1.15);
	
	makeAnimatedLuaSprite('delet', 'Justmonika/bigika_delete', 397, 430); 
	setLuaSpriteScrollFactor('delet', 1.0, 1.0);
	scaleObject('delet', 0.9, 0.9);
	setObjectCamera('delet', 'hud');
	makeLuaSprite('nigga', 'DokiClub/nigga', -440, 20); 
	setLuaSpriteScrollFactor('nigga', 1.0, 1.0);
	scaleObject('nigga', 3, 3);
	
    setTextSize('watermark',18);
    addLuaText('watermark');
	
	addLuaSprite('sky', false);
	addLuaSprite('sky2', false);
	addLuaSprite('sky3', false);
	addLuaSprite('sky4', false);
	addLuaSprite('club', false);
	addLuaSprite('mesa', false);
	addLuaSprite('delet', true);
    addAnimationByPrefix('delet','idle','PopUpAnim',28, true);
    addLuaSprite('nigga', true);
    
    setProperty('delet.visible', false);
    setProperty('nigga.visible', false);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'borrar' then
    setProperty('delet.visible', true);

		end
		
		if value1 == 'negro' then
    setProperty('delet.visible', false);
    setProperty('nigga.visible', true);

		end

		if value1 == 'noventana' then
    setProperty('delet.visible', false);

		end

	end
end