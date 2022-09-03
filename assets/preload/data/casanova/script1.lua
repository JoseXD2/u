local allowEndShit = false

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onEndSong() if not allowEndShit and isStoryMode and not seenCutscene then setProperty('inCutscene', true);
  makeLuaSprite('black','black',-600,-900)
  scaleObject('black',1.3,1.3)
  addLuaSprite('black',true)
  startDialogue('dialogue3'); allowEndShit = true; return Function_Stop; end return Function_Continue; end