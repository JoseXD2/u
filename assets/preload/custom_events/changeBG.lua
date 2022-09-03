-- Event notes hooks
function onCreate()
	timing = 120 / bpm;
end


function onEvent(name, value1, value2)
	
	if name == 'changeBG' then
		back = getObjectOrder('stageback');
		front = getObjectOrder('stagefront');
		
		makeLuaSprite('stageback', 'stagebackgrounds/streetBackError', -740, -140);
                scaleObject('stageback', 4, 4)
		addLuaSprite('stageback', false);
		setObjectOrder('stageback',back);
		objectPlayAnimation('TV','Error',true);
		runTimer('Error',timing,1);
	end


	
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'Error' then
		
		makeLuaSprite('stageback','stagebackgrounds/streetError',-640,-140);
                scaleObject('stageback', 2, 2)
		addLuaSprite('stageback', false);
		setObjectOrder('stageback',back);
		setObjectOrder('stagefront',front);
		objectPlayAnimation('TV','BlueScreen',true);
	end
end