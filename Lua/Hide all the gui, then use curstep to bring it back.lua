function onCreate()
	setProperty('camHUD.alpha', 0);
	setProperty('camGame.alpha', 0);
end

function onSongStart()
    setProperty('camGame.alpha', 1);
end

function onStepHit()
    if curStep == 100 then --change the step to whichever time of the song you want te hud to fade in
	doTweenAlpha('hud', 'camHUD', 1, 6, "quartInOut")
	end
end

--By AetherLynx
--Mods & Scripts
