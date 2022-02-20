function opponentNoteHit() --insert your opponent name here at == 'opponent' 
	if dadName == 'dad' then
		setProperty("health", getProperty("health") - 0.023)
		if getProperty("health") < 0.023 then
			setProperty("health", 0.023)
		end
	end
end
