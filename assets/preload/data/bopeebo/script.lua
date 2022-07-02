function getRating(diff)
	diff = math.abs(diff);
	if diff <= getPropertyFromClass('ClientPrefs', 'badWindow') then
		if diff <= getPropertyFromClass('ClientPrefs', 'goodWindow') then
			if diff <= getPropertyFromClass('ClientPrefs', 'sickWindow') then
				return 'sick';
			end
			return 'good';
		end
		return 'bad';
	end
	return 'shit';
end

makeAnimatedLuaSprite('ratingText', 'hqr/hmratings/hmratings', screenWidth * 0.35 - 75, screenHeight / 2 - 40);
		setObjectCamera('ratingText', 'hud');
		addLuaSprite('ratingText', true);
		addAnimationByPrefix('ratingText', 'shit', 'shit', 60, false);
		addAnimationByPrefix('ratingText', 'bad', 'bad', 60, false);
		addAnimationByPrefix('ratingText', 'good', 'good', 60, false);
		addAnimationByPrefix('ratingText', 'sick', 'sick', 60, false);
		addAnimationByPrefix('ratingText', 'hide', 'bad_00039', 60, false);
		objectPlayAnimation('ratingText', 'hide');
		setProperty('ratingText.antialiasing', false);
		scaleObject('ratingText', 5, 5);
		setScrollFactor('ratingText', 1, 1);
		if middlescroll then
			setProperty('ratingText.x', screenWidth * 0.35 - 375);
		end

makeLuaSprite('comboBG', 'hqr/hmratings/backthing', -300, screenHeight * 0.7);
		if downscroll then
			setProperty('comboBG.y', 40);
		end
		setBlendMode('comboBG', 'multiply');
		setObjectCamera('comboBG', 'hud');
		addLuaSprite('comboBG');

		makeLuaText('comboText', '', -170, 160, getProperty('comboBG.y') + 30);
		addLuaText('comboText');
		setTextFont('comboText', 'bulletinyourhead.ttf');
		setTextSize('comboText', 43);
		setTextColor('comboText', '0xFFff00aa');
		setTextBorder('comboText', 1, '0xFF000000');
		setTextAlignment('comboText', 'left');
		setProperty('comboText.scale.x', 3);
		setProperty('comboText.scale.y', 3);
	end
end

local wave = math.sin((getSongPosition()) / crochet * math.pi / 4);
			setTextColor('comboText', string.format('0xFFFF00%02X', math.floor(85 * wave + 85)));
		end
	end

function goodNoteHit(id, direction, noteType, isSustainNote)
	-- miamin ratings!!!
	if not isSustainNote and resetHideHud then
		strumTime = getPropertyFromGroup('notes', id, 'strumTime');
		local rating = getRating(strumTime - getSongPosition() + getPropertyFromClass('ClientPrefs','ratingOffset'));
		objectPlayAnimation('ratingText', rating, true);
		-- BRING BACK THE COMBO COUNTER LOL!!!!
		local combo = getProperty('combo');
		if combo >= 2 then
			if comboGone then
				doTweenX('ctt', 'comboText', 130, stepCrochet / 1000, 'linear');
				doTweenX('cbt', 'comboBG', 0, stepCrochet / 1000, 'linear');
				comboGone = false;
			end
			setTextString('comboText', combo .. 'x');
		end
	end
end