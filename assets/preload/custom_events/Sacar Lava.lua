function onCreate()
    makeAnimatedLuaSprite('lava','IHY/Luigi_IHY_Background_Assets_Lava',-10,725);
	addAnimationByPrefix('lava','idle','Lava',24,true);
    addLuaSprite('lava',true);
    setObjectCamera('lava','hud');
end
function onEvent(name,value1,value2)
    if name == "Sacar Lava" then
        doTweenY('subiendo','lava.offset',value1/6,0.25,'linear');
    end
end