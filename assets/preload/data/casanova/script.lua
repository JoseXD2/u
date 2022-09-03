local allowCountdown=false;
local allowCountdownEnd=false;
function onStartCountDown()
  if not allowCountdown and isStoryMode and not seenCutscene then
    startDialogue('dialogue');
    allowCountdown=true;
    return Function_Stop;
  end
end
function onCreate()
  makeLuaSprite('circ','churchSelever/circ',0,0)
  doTweenAlpha('circ','circ',0,0.1)
  addLuaSprite('circ',false)
end
function onStepHit()
  if curStep==1 then
    triggerEvent('Play Animation','hey','Dad')
    doTweenAlpha('circ1','circ',1,0.1)
  end
  if curStep==5 then
    doTweenAlpha('circ2','circ',0,0.1)
  end
  end