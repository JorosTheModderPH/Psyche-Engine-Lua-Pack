function opponentNoteHit() --If you edit, the health drain will simply break.
    health = getProperty('health')
    if getProperty('health') > 0.0 then
        setProperty('health', health- 0.023);
    end
end

function goodNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.0 then
        setProperty('health', health- 0.023);
    end
end

--script made by me
--Mods and Script
--note : This script is for opponent play from the lemz1 opponent play build. If you want to use opponent play for your mod, then open this link (https://github.com/lemz1/FNF-PsychEngine/tree/opponentplay) and then you will be able to use the script. Also, the opponent's play was a bit buggy.
--One more thing, if you're using lemz1 opponent play, I recommend you change the health gain to 2x, or it will not work. I tried everything I could to make a different health drain for BF and the opponent, but I still couldn't find a way.
