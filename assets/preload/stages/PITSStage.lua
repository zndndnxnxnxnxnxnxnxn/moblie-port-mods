function onCreate()
	-- background shit
	makeLuaSprite('pitsback', 'pitsback', -500, -300);
	setLuaSpriteScrollFactor('pitsback', 0.9, 0.9);
	
	makeLuaSprite('pitsfront', 'pitsfront', -500, -300);
	setLuaSpriteScrollFactor('pitsfront', 0.9, 0.9);
	scaleObject('pitsfront', 1.1, 1.1);


		makeLuaSprite('pitsforeground', 'pitsforeground', -500, -300);
		setLuaSpriteScrollFactor('pitsforeground', 0.9, 0.9);
		scaleObject('pitsforeground', 0.9, 0.9);
	end

	addLuaSprite('pitsback', false);
	addLuaSprite('pitsfront', false);
	addLuaSprite('pitsforeground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end