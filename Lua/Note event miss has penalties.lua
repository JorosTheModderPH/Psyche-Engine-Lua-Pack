function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do

		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Your_Note_Name' then --Check if the note on the chart is a Bullet Note

			setPropertyFromGroup('unspawnNotes', i, 'texture', 'images/note/Your_note_texture_here); --Change texture

			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not

			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);

			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);
			
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss

--If you want to change when you miss the notes, the health must be reduced by 10%, then you have to change it to 0.0877 value. If you want 20% reduced health, then 0.0877+0.0877 addition then value, you need to have math knowledge or use a calculator. Every 1% is 0.00877 value.
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties

               end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
local shootAnims = {"LEFT", "RIGHT", "UP", "DOWN"}

function goodNoteHit(id, direction, noteType, isSustainNote)

	if noteType == 'Your_Note_Name' then
--put any function here
    end
end
-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Your_Note_Name' then
		--put any function here
		end
	end