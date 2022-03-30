function onCreate()
	-- background shit
	makeLuaSprite('weebSky','poems n thorns/weebSky',-150, -20);
	setLuaSpriteScrollFactor('weebSky', 0.6,0.90);
	scaleObject('weebSky', 9, 6);
	makeLuaSprite('weebSchool', 'poems n thorns/weebSchool', -200, 0);
	setLuaSpriteScrollFactor('weebSchool', 0.6,0.90);
	scaleObject('weebSchool',6, 7);
	makeLuaSprite('weebStreet', 'poems n thorns/weebStreet',-200, 0);
	setLuaSpriteScrollFactor('weebStreet',  0.95, 0.95);
	scaleObject('weebStreet', 7, 7);
    
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('weebTreesBack','poems n thorns/weebTreesBack',-200, -20)
	setLuaSpriteScrollFactor('weebTreesBack', 0.85, 0.85);
	scaleObject('weebTreesBack', 6, 7);
	makeAnimatedLuaSprite('weebTrees', 'poems n thorns/weebTrees',-190, -20);
    setLuaSpriteScrollFactor('weebTrees', 0.85, 0.85);		
	scaleObject('weebTrees',6, 7)
	makeAnimatedLuaSprite('bgFreaks', 'poems n thorns/bgFreaks',-190, 180);
    setLuaSpriteScrollFactor('bgFreaks', 0.85, 0.85);		
	scaleObject('bgFreaks',7, 7)
	makeAnimatedLuaSprite('petals', 'poems n thorns/petals',-190, 200);
    setLuaSpriteScrollFactor('petals', 0.85, 0.85);		
	scaleObject('petals',7, 7)
	setProperty('weebSky.antialiasing', false);
	setProperty('weebSchool.antialiasing', false);
	setProperty('weebTreesBack.antialiasing', false);
	setProperty('bgFreaks.antialiasing', false);
	setProperty('petals.antialiasing', false);
    setProperty('weebStreet.antialiasing', false);


	end

	addLuaSprite('weebSky', false);
	addLuaSprite('weebSchool', false);
	addLuaSprite('weebStreet', false);
	addLuaSprite('weebTreesBack', false);
	addLuaSprite('weebTrees', false);
	addAnimationByPrefix('weebTrees','idle', 'weebTrees idle',12,true);
	addLuaSprite('petals', false);
	addAnimationByPrefix('petals','idle', 'PETALS ALL',24,true);
	addLuaSprite('bgFreaks', false);
	addAnimationByPrefix('bgFreaks','idle', 'BG fangirls dissuaded',24,true);
	


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end