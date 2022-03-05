

function onCreate()
	-- psych engine has no texture atlas support for lua yet so trees for now has a poorly made xml made by me so maybe next update lol -Daninnocent

	makeLuaSprite('bgSkysenpai', 'weebSenpai/weebSkysenpai', 0, 0)
	makeLuaSprite('bgSchoolsenpai', 'weebSenpai/weebSchoolsenpai', -200, 0)
	makeLuaSprite('bgStreetsenpai', 'weebSenpai/weebStreetsenpai', -200, 0)
	makeLuaSprite('fgTreessenpai', 'weebSenpai/weebTreesBacksenpai', -200 + 170, 130)

    
	
	scaleObject('bgSkysenpai', 36, 36)
	scaleObject('bgSchoolsenpai', 6, 6)
	scaleObject('bgStreetsenpai', 6, 6)
	scaleObject('fgTreessenpai', 6 * 0.8, 6 * 0.8)

	setProperty('bgSkysenpai.antialiasing', false)
	setProperty('bgSchoolsenpai.antialiasing', false)
	setProperty('bgStreetsenpai.antialiasing', false)
    setProperty('fgTreessenpai.antialiasing', false)


	setScrollFactor('bgSchoolsenpai', 0.6, 0.90)
	setScrollFactor('bgStreetsenpai', 0.95, 0.95)
	setScrollFactor('fgTreessenpai', 0.9, 0.9)

	addLuaSprite('bgSkysenpai', false)
	addLuaSprite('bgSchoolsenpai', false)
	addLuaSprite('bgStreetsenpai', false)
	addLuaSprite('fgTreessenpai', false)

	setProperty('bgSkysenpai.visible', false)
	setProperty('bgSchoolsenpai.visible', false)
	setProperty('bgStreetsenpai.visible', false)
    setProperty('fgTreessenpai.visible', false)


	makeLuaSprite('bgSky', 'weebSenpai/weebSkySenpai', -200, 0)
	makeLuaSprite('bgSchool', 'weebSenpai/weebSchoolSenpai', -200, 0)
	makeLuaSprite('bgStreet', 'weebSenpai/weebStreetSenpai', -200, 0)
	makeLuaSprite('fgTrees', 'weebSenpai/weebTreesBackSenpai', -200 + 170, 130)
	makeAnimatedLuaSprite('bgTrees', 'weebSenpai/weebTreesSenpai', -1200, -1200) --i know this is stupid but i dont know any other method other than this lol -Daninnocent
	makeAnimatedLuaSprite('treeLeaves', 'weebSenpai/petalsSenpai', -200, -40)

	makeAnimatedLuaSprite('secondDad','characters/spiritCrazy',100, 200)
	addAnimationByPrefix('secondDad','idle','Angry Senpai Idle instance',24,false)
	addAnimationByPrefix('secondDad','singLEFT','Angry Senpai LEFT NOTE instance',24,false)
	addAnimationByPrefix('secondDad','singRIGHT','Angry Senpai RIGHT NOTE instance',24,false)
	addAnimationByPrefix('secondDad','singUP','Angry Senpai UP NOTE instance',24,false)
	addAnimationByPrefix('secondDad','singDOWN','Angry Senpai DOWN NOTE instance',24,false)
	objectPlayAnimation('secondDad','idle',true)
	-- for seamless character switching lol, also the majority of the second dad code is stolen from the holiday mod part 1 :P -Daninnocent

	addAnimationByPrefix('bgTrees', 'bgTreesPlay', 'trees instance', 24, true)

	objectPlayAnimation('bgTrees', true)

	addAnimationByPrefix('treeLeaves', 'treeLeavesplay', 'PETALS ALL', 24, true)

	objectPlayAnimation('treeLeaves', true)
    
	
	scaleObject('bgSky', 36, 36)
	scaleObject('bgSchool', 6, 6)
	scaleObject('bgStreet', 6, 6)
	scaleObject('fgTrees', 6 * 0.8, 6 * 0.8)
	scaleObject('bgTrees', 6 * 1.2, 6 * 1.2)
	scaleObject('secondDad', 6, 6)
	scaleObject('treeLeaves', 6, 6)

	setProperty('bgSky.antialiasing', false)
	setProperty('bgSchool.antialiasing', false)
	setProperty('bgStreet.antialiasing', false)
    setProperty('fgTrees.antialiasing', false)
	setProperty('bgTrees.antialiasing', false)
	setProperty('secondDad.antialiasing', false)
	setProperty('treeLeaves.antialiasing', false)


	setScrollFactor('bgSchool', 0.6, 0.90)
	setScrollFactor('bgStreet', 0.95, 0.95)
	setScrollFactor('fgTrees', 0.9, 0.9)
	setScrollFactor('bgTrees', 0.85, 0.85)
	setScrollFactor('treeLeaves', 0.85, 0.85)

	addLuaSprite('bgSky', false)
	addLuaSprite('bgSchool', false)
	addLuaSprite('bgStreet', false)
	addLuaSprite('fgTrees', false)
	addLuaSprite('bgTrees', false)
	addLuaSprite('treeLeaves', false)
	addLuaSprite('secondDad', true)

	setProperty('secondDad.visible', false)

end


function onStartCountdown()
        if difficulty == 1 then
               if ghostTapping == true then
                  makeLuaText('thefunni', "PLEASE DISABLE GHOST TAPPING FIRST TO PROCEED OR GO TO SAFE DIFFICULTY IF YOU WANT GHOST TAPPING TURNED ON", 1000, 100, 500)
                  setTextSize('thefunni', 40)
                  setProperty('notes.visible', false)
                  setProperty('unspawnNotes.visible', false)
                  setProperty('strumLineNotes.visible', false)
                  addLuaText('thefunni')
              end
        end
end

function onUpdate()
	for i = 0, getProperty('notes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('notes', i, 'noteType') == 'Second Dad Sing' then

			if getPropertyFromGroup('notes', i, 'mustPress') then
				if getPropertyFromGroup('notes', i, 'strumTime') <= getSongPosition() then --Doesn't let Dad/Opponent notes get ignored
					nd = getPropertyFromGroup('notes', i, 'noteData')
					triggerEvent('dad2sing',nd,'')
					--objectPlayAnimation('secondDad',nd,true)
				end
			end
		end
	end
end

local  u = 0

function onEvent(n, v1, v2)
    if n == "switchsenpai" then

		setProperty('gf.visible', false)
		setProperty('dad.visible', false)
		setProperty('secondDad.visible', true)
		triggerEvent('Change Character', 1, 'SpiritCrazyIcon');
		setProperty('dad.visible', false)
		setProperty('dad.visible', false)
		setProperty('dad.visible', false)
		-- for icon switching since i cant do that on lua lol - Daninnocent

		setProperty('bgSky.visible', false)
		setProperty('bgSchool.visible', false)
		setProperty('bgStreet.visible', false)
		setProperty('fgTrees.visible', false)
		setProperty('bgTrees.visible', false)
		setProperty('treeLeaves.visible', false)

		setProperty('bgSkysenpai.visible', true)
		setProperty('bgSchoolsenpai.visible', true)
		setProperty('bgStreetsenpai.visible', true)
		setProperty('fgTreessenpai.visible', true)
	end
	if n == "switchSenpai" then


		setProperty('gf.visible', true)
		setProperty('dad.visible', true)
		setProperty('secondDad.visible', false)
		triggerEvent('Change Character', 1, 'senpaiSenpai');
		setProperty('dad.visible', true)
		setProperty('dad.visible', true)
		setProperty('dad.visible', true)
		-- for icon switching since i cant do that on lua lol part 2 - Daninnocent
	

		setProperty('bgSky.visible', true)
		setProperty('bgSchool.visible', true)
		setProperty('bgStreet.visible', true)
		setProperty('fgTrees.visible', true)
		setProperty('bgTrees.visible', true)
		setProperty('treeLeaves.visible', true)

		setProperty('bgSkysenpai.visible', false)
		setProperty('bgSchoolsenpai.visible', false)
		setProperty('bgStreetsenpai.visible', false)
		setProperty('fgTreessenpai.visible', false)
	end
	if n == "dad2sing" then

		cancelTimer('dadhold' .. u, 0.3, 1)
		u = u + 1
		runTimer('dadhold' .. u, 0.3, 1)
	
		if v1 == '0' then
			objectPlayAnimation('secondDad','singLEFT',true)
			setProperty('secondDad.offset.x',-200)
			setProperty('secondDad.offset.y',-280)
		end
		if v1 == '1' then
			objectPlayAnimation('secondDad','singDOWN',true)
			setProperty('secondDad.offset.x',170)
			setProperty('secondDad.offset.y',110)
		end
		if v1 == '2' then
			objectPlayAnimation('secondDad','singUP',true)
			setProperty('secondDad.offset.x',-220)
			setProperty('secondDad.offset.y',-240)
		end
		if v1 == '3' then
			objectPlayAnimation('secondDad','singRIGHT',true)
			setProperty('secondDad.offset.x',-220)
			setProperty('secondDad.offset.y',-280)
		end
	end
end

function onBeatHit()
	if mustHitSection then
		objectPlayAnimation('secondDad','idle',true)

                setProperty('secondDad.offset.x',-218)
                setProperty('secondDad.offset.y',-280)
	else

		if getProperty('secondDad.animation.curAnim.name') == 'idle' then
			objectPlayAnimation('secondDad','idle',true)

	        setProperty('secondDad.offset.x',-218)
	        setProperty('secondDad.offset.y',-280)
		end

	end

end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	triggerEvent('dad2sing',noteData,'')
end


function onTimerCompleted(t,l,ll)
	if t == 'dadhold' .. u then
		objectPlayAnimation('secondDad','idle',true)

        setProperty('secondDad.offset.x',-218)
        setProperty('secondDad.offset.y',-280)
	end
end

