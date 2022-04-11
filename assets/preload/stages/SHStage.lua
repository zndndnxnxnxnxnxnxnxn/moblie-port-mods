function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg', -500, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('ground', 'ground', -650, 600);
	setLuaSpriteScrollFactor('ground', 0.9, 0.9);
	scaleObject('ground', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('rock', 'rock', -500, -300);
		setLuaSpriteScrollFactor('rock', 1.3, 1.3);
		scaleObject('rock', 0.9, 0.9);
	end

	addLuaSprite('bg', false);
	addLuaSprite('ground', false);
	addLuaSprite('rock', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end