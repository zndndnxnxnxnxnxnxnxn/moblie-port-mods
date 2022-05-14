function onCreate()
	-- background shit
	makeAnimatedLuaSprite('bg_normal', 'bg_normal',-500, -300);
    setLuaSpriteScrollFactor('bg_normal', 0.4, 0.4);
 
   addLuaSprite('bg_normal', false);
	addAnimationByPrefix('bg_normal', 'idle', 'bg', 24, true); 
	
     luaSpritePlayAnimation('bg_normal', 'idle', true);
	end

	addLuaSprite('bg_normal', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end