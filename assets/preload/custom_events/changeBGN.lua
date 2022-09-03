-- Event notes hooks

function onEvent(name, value1, value2)
	
	if name == 'changeBGN' then
		back = getObjectOrder('stageback');
		front = getObjectOrder('stagefront');
		BG = tonumber(value1)
		if BG == 'ErrorBG' then
			
			
		elseif BG == 'NormalBG' then
			
			
		end
		nothing2 = tonumber(value2)
		if nothing2 == 0 then

		end
		makeLuaSprite('stageback', 'stagebackgrounds/streetBack', -740, -140);
                scaleObject('stageback', 2, 2)
		addLuaSprite('stageback', false);
		setObjectOrder('stageback',back);
		setObjectOrder('stagefront',front);
		objectPlayAnimation('TV','Attention',true);
	end


	
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	
end