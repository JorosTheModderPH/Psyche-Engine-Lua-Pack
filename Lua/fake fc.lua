function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        addScore(350)
        setRatingPercent(1)
    if ratingName == '?' then
        setRatingName('Perfect!!')
    end
end
end

function onUpdate()
    setProperty('botplayTxt.visible', false)
end