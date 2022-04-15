function onCreate()
	-- background shit
	makeLuaSprite('ANGRYBIRDstageback', 'ANGRYBIRDstageback', -500, -300);
	setLuaSpriteScrollFactor('ANGRYBIRDstageback', 0.9, 0.9);
	
	makeLuaSprite('ANGRYBIRDstagefront', 'ANGRYBIRDstagefront', -650, 600);
	setLuaSpriteScrollFactor('ANGRYBIRDstagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('ANGRYBIRDstagecurtains', 'ANGRYBIRDstagecurtains', -500, -300);
		setLuaSpriteScrollFactor('ANGRYBIRDstagecurtains', 1.3, 1.3);
		scaleObject('ANGRYBIRDstagecurtains', 0.9, 0.9);
	end

	addLuaSprite('ANGRYBIRDstageback', false);
	addLuaSprite('ANGRYBIRDstagefront', false);
	addLuaSprite('ANGRYBIRDstagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end