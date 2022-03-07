function goodNoteHit(id, noteData, noteType, isSustainNote)
    curHealth = getProperty('health');
	if isSustainNote then
		    setProperty('health', curHealth - 0.0115);
end
end
