function onEvent(name, value1, value2)
	if name == 'Gus' then
		addAnimationByPrefix('gus','Idle', 'qt smoke idle', 40, false);
		addAnimationByPrefix('gus2','Idle', 'qt smoke idle', 40, false);

		if value1 == '2' then
			objectPlayAnimation('gus', 'Idlehalf', true);
			objectPlayAnimation('gus2', 'Idlehalf', true);

		elseif value1 == '1' then
			objectPlayAnimation('gus', 'Idle', true);
			objectPlayAnimation('gus2', 'Idle', true);

		end
		
	end

end

