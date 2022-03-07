function opponentNoteHit(id, noteData, noteType, isSustainNote)
    curHealth = getProperty('health');
	if not isSustainNote then
		if curHealth > 0.00575 then 
		    setProperty('health', curHealth - 0.00575);
		end
	end
end
