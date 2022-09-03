function onCreate()
  makeLuaSprite('black','black',-600,-900)
  scaleObject('black',1.3,1.3)
  doTweenAlpha('black','black',0,0.1)
  addLuaSprite('black',false)
  setObjectOrder('black','5')
  end
function onStepHit()
  if curStep==115 then
    doTweenAlpha('black2','black',0.8,1)
  end
  if curStep==130 then
    doTweenAlpha('black3','black',0,0.1)
  end
  if curStep==933 then
    doTweenAlpha('black4','black',0.8,1)
  end
  if curStep==947 then
    doTweenAlpha('black5','black',0,0.1)
  end
  end