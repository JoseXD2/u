-- Event notes hooks

function onEvent(name, value1, value2)
	
	if name == 'TVscreen' then
		
		Screen = tonumber(value1)
		if Screen == 0 then
			
			objectPlayAnimation('TV','turnOff',true);
			
		elseif Screen == 1 then
			
			objectPlayAnimation('TV','turnOn',true);

		elseif Screen == 2 then
			
			objectPlayAnimation('TV','Instructions',true);

		elseif Screen == 3 then
			
			objectPlayAnimation('TV','GoodLuck',true);

		elseif Screen == 4 then
			
			objectPlayAnimation('TV','Error',true);

		elseif Screen == 5 then
			
			objectPlayAnimation('TV','BlueScreen',true);

		elseif Screen == 6 then
			
			objectPlayAnimation('TV','Attention',true);

		elseif Screen == 7 then
			
			objectPlayAnimation('TV','Watchout',true);

		elseif Screen == 8 then
			
			objectPlayAnimation('TV','Brutality',true);

		elseif Screen == 9 then
			
			objectPlayAnimation('TV','EyeLeft',true);

		elseif Screen == 10 then
			
			objectPlayAnimation('TV','EyeRight',true);

		elseif Screen == 11 then
			
			objectPlayAnimation('TV','Drop',true);
			
		elseif Screen == 12 then
			
			objectPlayAnimation('TV', 'End', true);

		end
		nothing2 = tonumber(value2)
		if nothing2 == 0 then

		end
		
		
	end


	
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	
end