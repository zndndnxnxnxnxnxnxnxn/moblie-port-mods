function onCreate()
	-- background shit
	makeLuaSprite('buildings', 'buildings', -500, -300);
	setLuaSpriteScrollFactor('buildings', 0.9, 0.9);
	
	makeLuaSprite('neonsigns', 'neonsigns', -500, -300);
	setLuaSpriteScrollFactor('neonsigns', 0.9, 0.9);
	scaleObject('neonsigns', 1.1, 1.1);

	-- triggered when the lua file is started
	makeAnimatedLuaSprite('SpookySpeakersP', 'SpookySpeakersP', 1200, 130);
	luaSpriteAddAnimationByPrefix('SpookySpeakersP', 'first', 'BG SPEAKERS PINK', 24, false);
	luaSpritePlayAnimation('SpookySpeakersP', 'first');
	addLuaSprite('SpookySpeakersP', false);
		

		makeLuaSprite('scaffolding', 'scaffolding', -500, -300);
		setLuaSpriteScrollFactor('scaffolding', 0.9, 0.9);
		scaleObject('scaffolding', 0.9, 0.9);
	end

	addLuaSprite('buildings', false);
	addLuaSprite('neonsigns', false);
	addLuaSprite('SpookySpeakersP', false);
	addLuaSprite('scaffolding', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end