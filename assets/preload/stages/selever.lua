function onCreate()
  makeLuaSprite('back','churchSelever/bg',-600,-900)
  scaleObject('back',1.3,1.3)
  makeLuaSprite('pillars','churchSelever/pillars',-600,-1000)
  scaleObject('pillars',1.3,1.3)
  makeLuaSprite('floor','churchSelever/floor',-600,-900)
  scaleObject('floor',1.3,1.3)
  addLuaSprite('back',false)
  addLuaSprite('floor',false)
  addLuaSprite('pillars',false)
  close(true);
  end