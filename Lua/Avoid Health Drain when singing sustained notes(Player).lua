function goodNoteHit(id, noteData, noteType, isSustainNote)
    curHealth = getProperty('health');
	if isSustainNote then
		    setProperty('health', curHealth - 0.023);--based on health gain, it can be bypassed when your health is x2 or more.
end
end
