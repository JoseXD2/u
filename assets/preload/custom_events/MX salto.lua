function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
    downheaight = 0;
	
    precacheImage('MX/cuidao');
	precacheSound('warningmx');
end

function onEvent(name, value1, value2)
    if name == "MX salto" then
    --Get Dodge time
        
    if not value1 == '' then
    DodgeTime = (value1);
    else
        DodgeTime = (1);
    end
    if not value2 == '' then
        downheaight = (value2);
    else
        downheaight = (140);
    end
    --Make Dodge Sprite
	makeLuaSprite('cuidao0', 'MX/cuidao0', 500, 200);
	setObjectCamera('cuidao0', 'other');
	scaleLuaSprite('cuidao0', 12.5, 12.5); 
    setProperty('cuidao0.antialiasing',false);
    addLuaSprite('cuidao0', true); 
    
    playSound('warningmx', 0.7);
    doTweenY('jump', 'dad',2.5,0.5,'quadIn');
    characterPlayAnim('dad', 'singLEFT', true);
    setProperty('dad.specialAnim', true);
	
	--Set values so you can dodge
	runTimer('Died', DodgeTime);
    runTimer('end', DodgeTime / 2);
    runTimer('ena', DodgeTime / 4);
	end
end

function onUpdate()
    if canDodge == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
   
    Dodged = true;
    characterPlayAnim('boyfriend', 'dodge', true);
    setProperty('boyfriend.specialAnim', true);
    canDodge = false
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'end' then
        canDodge = true;
        runTimer('ene', DodgeTime / 4);
        doTweenY('fall','dad',downheaight,0.45,'quadOut');
        cameraShake('game', 0.01, 0.04);
        cameraShake('hud', 0.003, 0.2);
        triggerEvent('Screen Shake','0.5, 0.03','0.01, 0.00')
        makeLuaSprite('cuidao', 'MX/cuidao', 500, 200);
	    setObjectCamera('cuidao', 'other');
	    scaleLuaSprite('cuidao', 12.5, 12.5); 
        setProperty('cuidao.antialiasing',false);
        addLuaSprite('cuidao', true); 
    end
    if tag == 'ena' then
        canDodge = true;
        removeLuaSprite('cuidao0');
    end
    if tag == 'ene' then
        canDodge = true;
        removeLuaSprite('cuidao');
    end
    if tag == 'Died' and Dodged == false then
    setProperty('health', getProperty('health')-1.25);
    removeLuaSprite('cuidao');
    characterPlayAnim('dad', 'singDOWN', false);
    characterPlayAnim('boyfriend', 'hurt', true);
    setProperty('boyfriend.specialAnim', true);
    elseif tag == 'Died' and Dodged == true then
    Dodged = false
    characterPlayAnim('dad', 'singDOWN', false);
    removeLuaSprite('cuidao');
    end
end
