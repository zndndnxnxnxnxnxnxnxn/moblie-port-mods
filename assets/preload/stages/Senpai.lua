function onCreate()
	-- background shit
	makeLuaSprite('weebSky', 'SenpaiOld/weebSky', -200, 0);

	scaleObject('weebSky', 6, 6);
    setProperty('weebSky', false);
    
    makeLuaSprite('weebSchool', 'SenpaiOld/weebSchool', -200, 0);
	
	scaleObject('weebSchool', 6, 6);
    setProperty('weebSchool', false);
   -- sprites that only load if Low Quality is turned off
	if not lowQuality then




	end

	addLuaSprite('weebSky', false);
	addLuaSprite('weebSchool', false);

	


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end