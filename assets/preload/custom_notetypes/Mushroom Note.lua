poison = false;
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Mushroom Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'poisonMario_NOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-1'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '1'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end
function onTimerCompleted(tag)
	--if tag == 'poison' then
	--	poison = false;
	--end
end
function onUpdate()
	
end
-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
--function goodNoteHit(id, noteData, noteType, isSustainNote)
--	if noteType == 'Mushroom Note' then
--		poison = true;
--        runTimer('poison',1);
--		if poison == true then
--			setProperty('health',getComponent('health')-0.05);
--		end
--	end
--end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Mushroom Note' then
		-- put something here if you want
	end
end