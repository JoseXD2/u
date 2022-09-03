function onCreate()
	-- background shit
	makeAnimatedLuaSprite('wea_mala_ctm', 'Wario/wea_mala_ctm', -295, -100);
	addAnimationByPrefix('wea_mala_ctm','idle','fondo instancia 1',24,true);
	makeAnimatedLuaSprite('BoyFriend_Wario_Assets_v3_Body1', 'Wario/BoyFriend_Wario_Assets_v3_Body1', 450, 700);
	addAnimationByPrefix('BoyFriend_Wario_Assets_v3_Body1','idle','BF Body Idle 1',24,true);
	makeAnimatedLuaSprite('BoyFriend_Wario_Assets_v3_Body2', 'Wario/BoyFriend_Wario_Assets_v3_Body2', 390, 650);
	addAnimationByPrefix('BoyFriend_Wario_Assets_v3_Body2','idle','BF Body Idle 2',24,true);
	scaleObject('wea_mala_ctm',2,2);
	addLuaSprite('wea_mala_ctm', false);
	objectPlayAnimation('wea_mala_ctm','idle',false);
	addLuaSprite('BoyFriend_Wario_Assets_v3_Body1', false);
	objectPlayAnimation('BoyFriend_Wario_Assets_v3_Body1','idle',false);
	addLuaSprite('BoyFriend_Wario_Assets_v3_Body2', false);
	objectPlayAnimation('BoyFriend_Wario_Assets_v3_Body2','idle',false);
	setObjectCamera('BoyFriend_Wario_Assets_v3_Body1','game');
	setObjectOrder('bfGroup',5);
	setObjectOrder('dadGroup',2);
	setObjectOrder('BoyFriend_Wario_Assets_v3_Body1',3);
	setObjectOrder('BoyFriend_Wario_Assets_v3_Body2',6);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
