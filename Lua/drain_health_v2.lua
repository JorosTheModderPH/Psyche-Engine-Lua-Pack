function opponentNoteHit()
     if getProperty('health') > 0.023 then --prevent opponent from killing by just singing too long
          if not isSustainNote then
               setProperty('health', getProperty('health')-0.023); --amount to lose on normal notes
          else
               setProperty('health', getProperty('health')-0.023); --amount to lose on sustain part of notes
          end
     end
end

--by frantastic24
--Mods & Scripts