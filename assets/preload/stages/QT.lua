function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stagebackgrounds/streetBackCute', -750, -145);
	scaleObject('stageback', 2, 2);
	setScrollFactor('stageback', 0.9, 0.9);

	makeLuaSprite('jokeAttack', 'KB/justkidding', 250, 200);


	makeAnimatedLuaSprite('gus', 'stagebackgrounds/Gas_Release', -1800, -640);
	addAnimationByPrefix('gus', 'Pre', 'Gas_ReleasePre0', 24, false);
	addAnimationByPrefix('gus', 'Idle', 'Gas_Release0', 12, false);
	addAnimationByPrefix('gus', 'Idlehalf', 'Gas_Release0', 12, false);
	setProperty('gus.alpha', 0.72);
	scaleObject('gus', 2.5, 2.5);
	setScrollFactor('gus', 0, 0);
	setProperty('gus.angle', -31);

	makeAnimatedLuaSprite('gus2', 'stagebackgrounds/Gas_Release', -100, -640);
	addAnimationByPrefix('gus2', 'Pre', 'Gas_ReleasePre0', 24, false);
	addAnimationByPrefix('gus2', 'Idle', 'Gas_Release0', 12, false);
	addAnimationByPrefix('gus2', 'Idlehalf', 'Gas_Release0', 12, false);
	setProperty('gus2.alpha', 0.72);
	scaleObject('gus2', 2.5, 2.5);
	setScrollFactor('gus2', 0, 0);
	setProperty('gus2.angle', 31);
	
	makeAnimatedLuaSprite('TV','stagebackgrounds/TV_V5', -62, 540);
	scaleObject('TV', 1.2, 1.2);
	setScrollFactor('TV', 0.89, 0.89);
	
	addAnimationByPrefix('KBsHand','attackpre','kb_attack_animation_fire',24,false);
	addAnimationByPrefix('KBsHand','attack','kb_attack_animation_fire',24,false);
	--makeAnimatedLuaSprite('KBsHand','KB/attackv6',-2220,560);
	makeAnimatedLuaSprite('KBsHandstay','KB/attackv6',-960,615);
	addAnimationByPrefix('KBsHandstay','preparepre','kb_attack_animation_preparepre',24,false);
	addAnimationByPrefix('KBsHandstay','prepare','kb_attack_animation_prepare',24,false);
	scaleObject('KBsHandstay', 1.15, 1.15);

	makeAnimatedLuaSprite('KBAlert','KB/attack_alert_EXTRAS', 430, 130);
	scaleObject('KBAlert', 1.6, 1.6);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('TV', false);
	addLuaSprite('KBAlert',true);
	addLuaSprite('KBsHand',true);
	addLuaSprite('KBsHandstay',true);
	addLuaSprite('gus', true);
	addLuaSprite('gus2', true);

	setObjectCamera('KBAlert', 'HUD');
	
	
	addAnimationByPrefix('TV', 'turnOff', 'TV_off', 24, true);
	addAnimationByPrefix('TV', 'End', 'TV_End', 24, false);
	addAnimationByPrefix('KBsHand', 'attackpre', 'kb_attack_animation_firepre', 24, false);
	addAnimationByPrefix('KBsHand', 'attack', 'kb_attack_animation_fire', 24, false);
	addAnimationByPrefix('KBsHandstay','preparepre','kb_attack_animation_preparepre', 24, false);
	addAnimationByPrefix('KBsHandstay','prepare','kb_attack_animation_prepare', 24, false);
	addAnimationByPrefix('KBAlert', 'alertpre','kb_attack_animation_alertpre', 24, false);
	addAnimationByPrefix('KBAlert', 'single','kb_attack_animation_alert-single', 24, false);
	addAnimationByPrefix('KBAlert', 'double','kb_attack_animation_alert-double', 24, false);
	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
	if songName == 'Cessation' or songName == 'CessationEX' then
		objectPlayAnimation('TV', 'End', true);
	end
	
end
