function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'shoot notes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_DEATH'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'shoot notes' then
			         missHealth = 300;

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'shoot notes' then
	end
end