function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.023 then --prevent opponent from killing by just singing too long 
        setProperty('health', health- 0.023); --amount to lose on normal notes
    end
end

--by someone
--Mods &  Scripts