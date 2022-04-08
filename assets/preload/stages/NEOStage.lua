function onCreate()
	-- background shit
	makeLuaSprite('backwall', 'backwall', -500, -300);
	setLuaSpriteScrollFactor('backwall', 0.9, 0.9);
	
	makeLuaSprite('stage', 'stage', -650, 600);
	setLuaSpriteScrollFactor('stage', 0.9, 0.9);
	scaleObject('stage', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('lights', 'lights', -500, -300);
		setLuaSpriteScrollFactor('lights', 1.3, 1.3);
		scaleObject('lights', 0.9, 0.9);
		

		makeLuaSprite('front_lights', 'front_lights', -500, -300);
		setLuaSpriteScrollFactor('front_lights', 1.3, 1.3);
		scaleObject('front_lights', 0.9, 0.9);
	end

	addLuaSprite('backwall', false);
	addLuaSprite('stage', false);
	addLuaSprite('lights', false);
	addLuaSprite('front_lights', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end