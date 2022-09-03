function onCreate()
	-- background shit
	makeLuaSprite('youhavebeendestroyed', 'youhavebeendestroyed', -510, -230);
	addLuaSprite('youhavebeendestroyed', false);
	
	makeLuaSprite('overlayingsticks', 'overlayingsticks', -510, -230);

	addLuaSprite('overlayingsticks', true);

	close(true)
end