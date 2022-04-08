--easy script configs
IntroTextSize = 25	--Size of the text for the Now Playing thing.
IntroSubTextSize = 30 --size of the text for the Song Name.
IntroTagColor = '4F8EF5'	--Color of the tag at the end of the box.
IntroTagWidth = 15	--Width of the box's tag thingy.
--easy script configs

--actual script
function onCreate()
	--the tag at the end of the box
	makeLuaSprite('JukeBoxTag', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBoxTag', 295+IntroTagWidth, 150, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	--the box
	makeLuaSprite('JukeBox', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBox', 310, 145, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('JukeBoxText', songName, 300, -305-IntroTagWidth, 30)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
        setTextColor('JukeBoxText', IntroTagColor)
	addLuaText('JukeBoxText')
	
	makeLuaText('JukeBoxTextDifficulty','Playing on', 300, -305-IntroTagWidth, 70)
	setTextAlignment('JukeBoxTextDifficulty', 'left')
	setObjectCamera('JukeBoxTextDifficulty', 'other')
	setTextSize('JukeBoxTextDifficulty', IntroSubTextSize)
	addLuaText('JukeBoxTextDifficulty')

	--text for the song name
	makeLuaText('JukeBoxSubTextDifficulty',difficultyName, 300, -305-IntroTagWidth, 96)
	setTextAlignment('JukeBoxSubTextDifficulty', 'left')
	setObjectCamera('JukeBoxSubTextDifficulty', 'other')
	setTextSize('JukeBoxSubTextDifficulty', IntroSubTextSize)
	addLuaText('JukeBoxSubTextDifficulty')
	
	makeLuaText('JukeBoxAnotherTextDifficulty','Difficuly! ', 300, -305-IntroTagWidth, 124)
	setTextAlignment('JukeBoxAnotherTextDifficulty', 'left')
	setObjectCamera('JukeBoxAnotherTextDifficulty', 'other')
	setTextSize('JukeBoxAnotherTextDifficulty', IntroSubTextSize)
	addLuaText('JukeBoxAnotherTextDifficulty')
end

--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
	doTweenX('MoveInFive', 'JukeBoxTextDifficulty', 0, 1, 'CircInOut')
	doTweenX('MoveInSix', 'JukeBoxSubTextDifficulty', 0, 1, 'CircInOut')
	doTweenX('MoveInSeven', 'JukeBoxAnotherTextDifficulty', 0, 1, 'CircInOut')
	
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFive', 'JukeBoxTextDifficulty', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutSix', 'JukeBoxSubTextDifficulty', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutSeven', 'JukeBoxAnotherTextDifficulty', -450, 1.5, 'CircInOut')
	end
end

--script by AetherLynx
