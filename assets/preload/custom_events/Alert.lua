-- Event notes hooks
function onCreate()
    --variables
	Dodged = false;
	Dodged2 = false;
	Dodged3 = false;
	Dodged4 = false;
	canDodge = false;
	attackEnd = false;
	canDodge2 = false;
	canDodge3 = false;
	canDodge4 = false;

	
end

function onEvent(name, value1, value2)
	if name == 'Alert' then
		attackEnd = false;
		timing = 120 / bpm * 0.5;
		ex = tonumber(value1)
		length = 1/tonumber(value2)
		
		if ex == 0 then
			KBfirstSAlert();
			runTimer('SinKBalert', timing * length);
			runTimer('SinKBattack', timing * length * 2);			
			if botPlay == false then
				canDodge = true;
			end
			

		elseif ex == 1 then
			KBfirstSAlert();
			runTimer('DouKBalert', timing * length);
			runTimer('DouKBattack', timing * length * 2);
			runTimer('DouKBattack2', timing * length * 3);
			if botPlay == false then
				canDodge = true;
			end
			
		elseif ex == 2 then
			KBfirstSAlert();
			runTimer('SinKBalert', timing * length);

		elseif ex == 3 then
			KBsecondSAlert();
			runTimer('TriKBalert', timing * length);
			runTimer('TriKBalert2', timing * length * 2);
			runTimer('TriKBalert3', timing * length * 3);
			runTimer('TriKBattack', timing * length * 4);
			runTimer('TriKBattack2', timing * length * 5);
			runTimer('TriKBattack3', timing * length * 6);
			if botPlay == false then
				canDodge = true;
			end

		elseif ex == 4 then
			KBsecondSAlert();
			runTimer('CuaKBalert', timing * length);
			runTimer('CuaKBalert2', timing * length * 2);
			runTimer('CuaKBalert3', timing * length * 3);
			runTimer('CuaKBattack', timing * length * 4);
			runTimer('CuaKBattack2', timing * length * 5);
			runTimer('CuaKBattack3', timing * length * 6);
			runTimer('CuaKBattack4', timing * length * 7);
			if botPlay == false then
				canDodge = true;
			end

		end
		
	end

end

function onUpdate()
	--debugPrint(Dodged,Dodged2,attackEnd);

	if canDodge == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
		Dodged = true;
		if ex == 0 then
			attackEnd = true;
		end
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		canDodge = false;
		if attackEnd == false then
			runTimer('cooldown',timing * length * 0.2);		
		end
		
	end

	if canDodge2 == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or  getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
		Dodged2 = true;
		if ex == 1 then
			attackEnd = true;
		end
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		canDodge2 = false;
		if attackEnd == false then
			runTimer('cooldown2',timing * length * 0.2);
		end
		
	end
	
	if canDodge3 == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
		Dodged3 = true;
		if ex == 3 then
			attackEnd = true;
		end
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		canDodge3 = false;
		if attackEnd == false then
			runTimer('cooldown3',timing * length * 0.2);
		end
		
	end

	if canDodge4 == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
		Dodged4 = true;
		if ex == 4 then
			attackEnd = true;
		end
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		canDodge4 = false;
		
		
	end

end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining

	if tag == 'cooldown' then
		if ex == 1 then
			canDodge2 = true;
			attackEnd = true;
		end
		if ex >= 3 then
			canDodge2 = true;
		end
	end

	if tag == 'cooldown2' then
		canDodge3 = true;
		if ex == 3 then
			attackEnd = true;
		end
		
	end

	if tag == 'cooldown3' then
		canDodge4 = true;
		if ex == 4 then
			attackEnd = true;
		end
		
	end

	

	-- SingleAttack
	if tag == 'SinKBalert' then
		KBfirstAlert();
		if ex == 2 then
			runTimer('joke',timing * length);
		end
	end
	if tag == 'SinKBattack' then
		KBfirstAttack();
		
	end
	
	-- DoubleAttack
	if tag == 'DouKBalert' then
		KBsecondAlert();
		
	end
	if tag == 'DouKBattack' then
		KBfirstAttack();
		
	end
	if tag == 'DouKBattack2' then
		KBsecondAttack();
		
	end

	-- TripleAttack
	if tag == 'TriKBalert' then
		KBsecondAlert();
		
	end
	if tag == 'TriKBalert2' then
		KBthirdAlert();
		
	end
	if tag == 'TriKBalert3' then
		KBthirdAlert();
		
	end
	if tag == 'TriKBattack' then
		KBsecondSAttack();
		
	end
	if tag == 'TriKBattack2' then
		KBsecondAttack();
		
	end
	if tag == 'TriKBattack3' then
		KBthirdAttack();
		
	end

	-- CuadAttack
	if tag == 'CuaKBalert' then
		KBsecondAlert();
		
	end
	if tag == 'CuaKBalert2' then
		KBthirdAlert();
		
	end
	if tag == 'CuaKBalert3' then
		KBfourthAlert();
		
	end
	if tag == 'CuaKBattack' then
		KBsecondSAttack();
		
	end
	if tag == 'CuaKBattack2' then
		KBsecondAttack();
		
	end
	if tag == 'CuaKBattack3' then
		KBthirdAttack();
		
	end
	if tag == 'CuaKBattack4' then
		KBfourthAttack();
		
	end

	-- JokeAttack
	if tag == 'joke' then
		playSound('bruh', 2);
		addLuaSprite('jokeAttack', true);
		setObjectCamera('jokeAttack', 'HUD');
		runTimer('jokeEnd', timing * length * 2);
	end

	if tag == 'jokeEnd' then
		removeLuaSprite('jokeAttack', false);
		objectPlayAnimation('KBsHandstay', 'preparepre', false);
	end

	
	
	if tag == 'Died' and Dodged == false then
		setProperty('health', 0);
	elseif tag == 'Died' and Dodged == true then
		Dodged = false;
	end

	if tag == 'Died2' and Dodged2 == false then
		setProperty('health', 0);
	elseif tag == 'Died2' and Dodged2 == true then
		Dodged2 = false;
	end

	if tag == 'Died3' and Dodged3 == false then
		setProperty('health', 0);
	elseif tag == 'Died3' and Dodged3 == true then
		Dodged3 = false;
	end

	if tag == 'Died4' and Dodged4 == false then
		setProperty('health', 0);
	elseif tag == 'Died4' and Dodged4 == true then
		Dodged4 = false;
	end

end

function KBfirstSAlert()
	if ex == 0 then
		attackEnd = true;
	end
	playSound('alert', 1);
	objectPlayAnimation('KBAlert','single',true);
	objectPlayAnimation('KBsHandstay','prepare',true);
end

function KBfirstAlert()
	playSound('alert', 1);
	objectPlayAnimation('KBAlert','single',true);
end

function KBsecondSAlert()
	playSound('alertALT', 1);
	objectPlayAnimation('KBAlert','double',true);
	objectPlayAnimation('KBsHandstay','prepare',true);
end

function KBsecondAlert()
	playSound('alertALT', 1);
	objectPlayAnimation('KBAlert','double',true);
	
end

function KBthirdAlert()
	playSound('alertALT2', 1);
	objectPlayAnimation('KBAlert','triple',true);
	
end

function KBfourthAlert()
	playSound('alertALT3', 1);
	objectPlayAnimation('KBAlert','cuad',true);
	
end

function KBfirstAttack()
	playSound('attack',1.5);
	objectPlayAnimation('KBsHand','attack',true);
	objectPlayAnimation('KBsHandstay', 'preparepre', true);
	if botPlay == true then
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
	elseif botPlay == false then
		
		runTimer('Died', 0.09,1);
	end
	
end

function KBsecondSAttack()
	
	playSound('attack_alt02',1.5);
	objectPlayAnimation('KBsHand','attack',true);
	objectPlayAnimation('KBsHandstay', 'preparepre', true);
	if botPlay == true then
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
	elseif botPlay == false then
		
		runTimer('Died', 0.09,1);
	end
end

function KBsecondAttack()
	if ex == 1 then
		attackEnd = true;
	end
	playSound('attack_alt02',1.5);
	objectPlayAnimation('KBsHand','attack',true);
	if botPlay == true then
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
	elseif botPlay == false then
		runTimer('Died2', 0.09,1);
	end
end

function KBthirdAttack()
	if ex == 3 then
		attackEnd = true;
	end
	playSound('attack_alt03',1.5);
	objectPlayAnimation('KBsHand','attack',true);
	if botPlay == true then
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
	elseif botPlay == false then
		runTimer('Died3', 0.09,1);
	end
end

function KBfourthAttack()
	if ex == 4 then
		attackEnd = true;
	end
	playSound('attack_alt04',1.5);
	objectPlayAnimation('KBsHand','attack',true);
	if botPlay == true then
		playSound('dodge01',1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
	elseif botPlay == false then
		runTimer('Died4', 0.09,1);
	end
end