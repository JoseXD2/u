function onEvent(name)
	if name == 'Damage' then
    setProperty('health',getProperty('health')-0.25);
end end