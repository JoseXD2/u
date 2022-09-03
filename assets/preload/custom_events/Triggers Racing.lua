function onCreate()
    makeAnimatedLuaSprite('cajamk','Races/cajamk',585,-250);
    makeLuaSprite('cajashell','Races/shell',585,50);
    makeLuaSprite('cajaboo','Races/boo',585,50);
    makeLuaSprite('cajabomb','Races/bomb',585,50);
    makeLuaSprite('redshell','Races/redshell',-100,600);
    addAnimationByPrefix('cajamk','idle','random',24,true);
    addAnimationByPrefix('cajashell','idle','shell',24,true);
    addAnimationByPrefix('cajaboo','idle','ghost',24,true);
    addAnimationByPrefix('cajabomb','idle','bomb',24,true);
    addLuaSprite('cajamk',true);
    setObjectCamera('cajamk','hud');
    addLuaSprite('redshell',true);
    setObjectCamera('cajashell','hud');
    setObjectCamera('cajaboo','hud');
    setObjectCamera('cajabomb','hud');
    setObjectCamera('redshell','hud');
    setProperty('cajamk.alpha',0);
    preCacheSound('shellhit');
    playObjectAnimation('cajamk','idle',true);
    setProperty('dad.position',2000,150);
end
function onEvent(name,value1,value2)

    if name == "Triggers Racing" then
        
        if value1 == '0' then
            doTweenX('start','dad',-100,1.29,'linear');
        elseif value1 == '2' then
            doTweenY('caja','cajamk',50,1,'linear');
            doTweenAlpha('apear','cajamk',1,1,'linear');
        elseif value1 == '3' then
            addLuaSprite('cajashell',true);
            removeLuaSprite('cajamk');
            playObjectAnimation('cajamk','shell',true);
        elseif value1 =='4' then
            removeLuaSprite('cajashell');
            addLuaSprite('cajaboo',true);
        elseif value1 == '5' then
            removeLuaSprite('cajaboo');
            addLuaSprite('cajabomb',true);
        elseif value1 == '7' then
            playSound('shellhit',0.7);
            setProperty('health',getProperty('health')-0.25);
            doTweenX('hit','redshell',275,0.05,'linear');
        end
    end
end
function onTweenCompleted(tag,loop,loopsLeft)
    if tag == 'start' then
        setCharacterX('dad');
    end
    if tag == 'hit' then
        doTweenX('back','redshell',-100,0.5,'linear');
    end
end