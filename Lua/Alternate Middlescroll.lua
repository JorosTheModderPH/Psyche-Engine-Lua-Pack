function onUpdate()
    if not getPropertyFromClass('ClientPrefs', 'middleScroll') then
    setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
    setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX3)
    setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX0)
    setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3)
    
    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX1)
    setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX2)
    setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX1)
    setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX2)
    
    setPropertyFromGroup('opponentStrums', 0, 'y', 470)
        setPropertyFromGroup('opponentStrums', 1, 'y', 470)
            setPropertyFromGroup('opponentStrums', 2, 'y', 470)
                setPropertyFromGroup('opponentStrums', 3, 'y', 470)
    setPropertyFromGroup('playerStrums', 0, 'y', 50)
        setPropertyFromGroup('playerStrums', 1, 'y', 50)
            setPropertyFromGroup('playerStrums', 2, 'y', 50)
                setPropertyFromGroup('playerStrums', 3, 'y', 50)
    end
end

--script by BerdlyEC