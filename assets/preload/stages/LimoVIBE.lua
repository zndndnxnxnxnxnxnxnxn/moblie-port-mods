function onCreate()
	-- background shit
	makeLuaSprite('limoSunset', 'VIBELIMO/limoSunset', -520, -200);
	setLuaSpriteScrollFactor('limoSunset', 0.1, 0.1);
    scaleObject('limoSunset', 1.2, 1.2);

	makeAnimatedLuaSprite('limoDrive', 'VIBELIMO/limoDrive',-420, 550);
    setLuaSpriteScrollFactor('limoDrive', 1, 1);
		  scaleObject('limoDrive', 1.2, 1.0);
	makeAnimatedLuaSprite('Mom_Road', 'VIBELIMO/Mom_Road',-1300, 550);
  
	makeAnimatedLuaSprite('bgLimo','VIBELIMO/bgLimo', -150, 480);
	setLuaSpriteScrollFactor('bgLimo', 0.4, 0.4);


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('limoDancer2', 'limo/limoDancer',550, 100);
    setLuaSpriteScrollFactor('limoDancer2', 0.4, 0.4);

	makeAnimatedLuaSprite('limoDancer3', 'limo/limoDancer',250, 100);
    setLuaSpriteScrollFactor('limoDancer3', 0.4, 0.4);
	
	makeAnimatedLuaSprite('limoDancer4', 'limo/limoDancer',850, 100);
    setLuaSpriteScrollFactor('limoDancer4', 0.4, 0.4);
	
	makeAnimatedLuaSprite('limoDancer5', 'limo/limoDancer',1150, 100);
    setLuaSpriteScrollFactor('limoDancer5', 0.4, 0.4);
	end
	
    
	addLuaSprite('limoSunset', false);

	addLuaSprite('Mom_Road', false);
	addAnimationByPrefix('Mom_Road', 'idle', 'Mom_Road', 24, true);
	
	addLuaSprite('bgLimo', false);
	addAnimationByPrefix('bgLimo', 'idle', 'BG limo instance', 20, true); 
	addLuaSprite('limoDancer2', false);
	addAnimationByPrefix('limoDancer2', 'idle', 'bg dancer sketch PINK', 24, true); 
	addLuaSprite('limoDancer3', false);
	addAnimationByPrefix('limoDancer3', 'idle', 'bg dancer sketch PINK', 24, true);
	addLuaSprite('limoDancer4', false);
	addAnimationByPrefix('limoDancer4', 'idle', 'bg dancer sketch PINK', 24, true);
	addLuaSprite('limoDancer5', false);
	addAnimationByPrefix('limoDancer5', 'idle', 'bg dancer sketch PINK', 24, true);

	addLuaSprite('limoDrive', false);
    setObjectOrder('limoDrive',8);
	addAnimationByPrefix('limoDrive', 'idle', 'Limo stage', 24, true); 

   
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end