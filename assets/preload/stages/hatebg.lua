function onCreate()
	-- background shit
	makeLuaSprite('Luigi_IHY_Background_Assets_ete_sech', 'IHY/Luigi_IHY_Background_Assets_ete_sech', -525, 0);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_Candle','IHY/Luigi_IHY_Background_Assets_Candle',825,75);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_Candle','idle','fuegoaaaaaaaaa instancia 1',24,true);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_Candle1','IHY/Luigi_IHY_Background_Assets_Candle',425,75);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_Candle1','idle','fuegoaaaaaaaaa instancia 1',24,true);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_Candle2','IHY/Luigi_IHY_Background_Assets_Candle',-275,75);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_Candle2','idle','fuegoaaaaaaaaa instancia 1',24,true);
	makeLuaSprite('Luigi_IHY_Background_Assets_Floor', 'IHY/Luigi_IHY_Background_Assets_Floor', -750, -50);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_Boo1','IHY/Luigi_IHY_Background_Assets_Boo',1075,125);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_Boo1','idle','Boo',24,true);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_Boo2','IHY/Luigi_IHY_Background_Assets_Boo',275,25);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_Boo2','idle','Boo',24,true);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_Boo','IHY/Luigi_IHY_Background_Assets_Boo',1275,25);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_Boo','idle','Boo',24,true);
	makeLuaSprite('Luigi_IHY_Background_Assets_ete_sech_v2','IHY/Luigi_IHY_Background_Assets_ete_sech_v2',1275,250);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_DrownedMario','IHY/Luigi_IHY_Background_Assets_DrownedMario',0,500);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_DrownedMario','idle','DrownedMarioIdle',24,true);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_DrownedMario','hey','DrownedMarioGrab',24,true);
	makeAnimatedLuaSprite('Luigi_IHY_Background_Assets_DrownedMario1','IHY/Luigi_IHY_Background_Assets_DrownedMario',1000,500);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_DrownedMario1','idle','DrownedMarioIdle',24,true);
	addAnimationByPrefix('Luigi_IHY_Background_Assets_DrownedMario1','hey','DrownedMarioGrab',24,true);

	addLuaSprite('Luigi_IHY_Background_Assets_ete_sech', false);
	addLuaSprite('Luigi_IHY_Background_Assets_Floor', false);
	addLuaSprite('Luigi_IHY_Background_Assets_Candle', false);
	objectPlayAnimation('Luigi_IHY_Background_Assets_Candle','idle',false);
	addLuaSprite('Luigi_IHY_Background_Assets_Candle1', false);
	objectPlayAnimation('Luigi_IHY_Background_Assets_Candle1','idle',false);
	addLuaSprite('Luigi_IHY_Background_Assets_Candle2', false);
	objectPlayAnimation('Luigi_IHY_Background_Assets_Candle2','idle',false);
	addLuaSprite('Luigi_IHY_Background_Assets_DrownedMario',false);
	addLuaSprite('Luigi_IHY_Background_Assets_DrownedMario1',false);
	setProperty('Luigi_IHY_Background_Assets_DrownedMario.alpha',0);
	setProperty('Luigi_IHY_Background_Assets_DrownedMario1.alpha',0);

end
function onStepHit()
	if curStep == 911 then
	addLuaSprite('Luigi_IHY_Background_Assets_Boo', false);
	objectPlayAnimation('Luigi_IHY_Background_Assets_Boo','idle',false);
	addLuaSprite('Luigi_IHY_Background_Assets_Boo1', false);
	objectPlayAnimation('Luigi_IHY_Background_Assets_Boo1','idle',false);
	setProperty('Luigi_IHY_Background_Assets_Boo2.XFlip',true);
	addLuaSprite('Luigi_IHY_Background_Assets_Boo2', false);
	objectPlayAnimation('Luigi_IHY_Background_Assets_Boo2','idle',false);
	end
	if curStep == 1095 then
		addLuaSprite('Luigi_IHY_Background_Assets_ete_sech_v2',false);
	end
	if curStep == 1260 then
		setProperty('Luigi_IHY_Background_Assets_DrownedMario.alpha',1);
		objectPlayAnimation('Luigi_IHY_Background_Assets_DrownedMario','hey',false);
		runTimer('drown',2);
	end
	if curStep == 1292 then
		setProperty('Luigi_IHY_Background_Assets_DrownedMario1.alpha',1);
		objectPlayAnimation('Luigi_IHY_Background_Assets_DrownedMario1','hey',false);
		runTimer('drown',2);
	end
end
function onTimerCompleted(tag)
	if tag == 'drown' then
		objectPlayAnimation('Luigi_IHY_Background_Assets_DrownedMario','idle',true);
		objectPlayAnimation('Luigi_IHY_Background_Assets_DrownedMario1','idle',true);
	end
end