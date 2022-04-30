function onCreate()
	-- background shit
	makeLuaSprite('Citysky','Citysky',-150, -20);
	setLuaSpriteScrollFactor('Citysky', 0.6,0.90);
	scaleObject('Citysky', 9, 6);
	makeLuaSprite('CityStreet', 'CityStreet',-200, 0);
	setLuaSpriteScrollFactor('CityStreet',  0.95, 0.95);
	scaleObject('CityStreet', 7, 7);
    
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	setProperty('Citysky.antialiasing', false);
    setProperty('CityStreet.antialiasing', false);
	end

	addLuaSprite('Citysky', false);
	addLuaSprite('CityStreet', false);
	


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end