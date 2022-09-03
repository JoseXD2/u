function onCreate()
  makeLuaSprite('back','church2/bg',-600,-900)
  scaleObject('back',1.3,1.3)
  makeLuaSprite('pillars','church2/pillars',-600,-900)
  scaleObject('pillars',1.3,1.3)
  makeLuaSprite('floor','church2/floor',-600,-900)
  scaleObject('floor',1.3,1.3)
  addLuaSprite('back',false)
  addLuaSprite('floor',false)
  addLuaSprite('pillars',false)
  setObjectOrder('pillars','3')
  close(true);
  end