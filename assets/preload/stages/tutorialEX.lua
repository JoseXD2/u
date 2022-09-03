function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	makeAnimatedLuaSprite('KBsHand','KB/attackv6',-2220,560);
	makeAnimatedLuaSprite('KBsHandstay','KB/attackv6',-520,560);

	makeAnimatedLuaSprite('KBAlert','KB/attack_alert_EXTRAS', 430, 130);
	scaleObject('KBAlert', 1.6, 1.6);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	addLuaSprite('KBsHand',true);
	addLuaSprite('KBsHandstay',true);
	addLuaSprite('KBAlert',true);
	setObjectCamera('KBAlert', 'HUD');
	
	addAnimationByPrefix('KBsHand', 'attackpre', 'kb_attack_animation_firepre', 24, false);
	addAnimationByPrefix('KBsHand', 'attack', 'kb_attack_animation_fire', 24, false);
	addAnimationByPrefix('KBsHandstay','preparepre','kb_attack_animation_preparepre', 24, false);
	addAnimationByPrefix('KBsHandstay','prepare','kb_attack_animation_prepare', 24, false);
	addAnimationByPrefix('KBAlert', 'alertpre','kb_attack_animation_alertpre', 24, false);
	addAnimationByPrefix('KBAlert', 'single','kb_attack_animation_alert-single', 24, false);
	addAnimationByPrefix('KBAlert', 'double','kb_attack_animation_alert-double', 24, false);
	addAnimationByPrefix('KBAlert', 'triple','kb_attack_animation_alert-triple', 24, false);
	addAnimationByPrefix('KBAlert', 'cuad','kb_attack_animation_alert-cuadruple-LMA', 24, false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end