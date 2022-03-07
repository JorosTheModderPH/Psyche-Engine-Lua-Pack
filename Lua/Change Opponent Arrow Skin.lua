function onCreatePost()

    for i=0,3 do
        setPropertyFromGroup('opponentStrums',i,'texture', 'NOTE_assets2')
    end

    for i=0, getProperty('unspawnNotes.length')-1 do
		setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets2')
    end

end

--script by lemz1
