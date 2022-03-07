function onUpdatePost() 
function goodNoteHit(id, noteData, noteType, isSustainNote)
    curHealth = getProperty('health');
	if isSustainNote then
		if curHealth > 0.023 then 
		    setProperty('health', curHealth - 0.023);
		end
	end
end
end

--script by kingyomoma
