function onCreate()
    makeLuaSprite('waho','MX/waho',250,0);
    makeAnimatedLuaSprite('MX_Assets_Laugh_v1','MX/MX_Assets_Laugh_v1',325,125);
	addAnimationByPrefix('MX_Assets_Laugh_v1','idle','MXLaugh instancia 1',24,true);
    addLuaSprite('waho',true);
    setProperty('waho.alpha',0);
    setProperty('MX_Assets_Laugh_v1.alpha',0);
end
function onEvent(name,value1,value2)

    if name == "Triggers Innocent" then
        
        if value1 == '0' then
            cameraFade('game','000000',1,true);
            addLuaSprite('MX_Assets_Laugh_v1',true);
            scaleLuaSprite('MX_Assets_Laugh_v1', 0.75, 0.75); 
            doTweenAlpha('apear','MX_Assets_Laugh_v1',1,1,'linear');
            objectPlayAnimation('MX_Assets_Laugh_v1','idle',false);
            setObjectCamera('MX_Assets_Laugh_v1','hud')
        elseif value1 == '1' then
            doTweenAlpha('disapear','MX_Assets_Laugh_v1',0,1,'linear');
        elseif value1 == '2' then
            cameraFade('game','00000',1,false);
            doTweenAlpha('wahooo','waho',1,0.25,'linear');
            doTweenAngle('wahaaaaa','waho',-35,1,'quadOut');
            doTweenX('wahaaa','waho',525,1,'linear');
            doTweenY('wahaaaa','waho',-275,1,'linear');
        end
    end
end
function onTweenCompleted(tag,loop,loopsLeft)
    if tag == 'wahooo' then
        doTweenAlpha('wahoo','waho',0,0.75,'linear');
    end
end