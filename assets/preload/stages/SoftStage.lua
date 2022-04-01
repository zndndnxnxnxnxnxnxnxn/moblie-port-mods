function onCreate()
	-- background shit
	makeLuaSprite('alleybg', 'alleybg', -500, -300);
	setLuaSpriteScrollFactor('alleybg', 0.9, 0.9);
	
	makeLuaSprite('alleyfloor', 'alleyfloor', -500, -300);
	setLuaSpriteScrollFactor('alleyfloor', 0.9, 0.9);

		makeLuaSprite('alleycat', 'alleycat', -500, -300);
		setLuaSpriteScrollFactor('alleycat', 1.3, 1.3);
		scaleObject('alleycat', 0.9, 0.9);
	end

	addLuaSprite('alleybg', false);
	addLuaSprite('alleyfloor', false);
	addLuaSprite('alleycat', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end