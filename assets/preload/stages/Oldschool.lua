function onCreate()
	-- background shit
	makeLuaSprite('OldweebSky','Oldschool/OldweebSky',-150, -20);
	setLuaSpriteScrollFactor('OldweebSky', 0.6,0.90);
	scaleObject('OldweebSky', 9, 6);
	makeLuaSprite('OldweebStreet', 'Oldschool/OldweebStreet',-200, 0);
	setLuaSpriteScrollFactor('OldweebStreet',  0.95, 0.95);
	scaleObject('OldweebStreet', 7, 7);
	makeAnimatedLuaSprite('OldbgFreaks', 'Oldschool/OldbgFreaks',-200, 0);
    setLuaSpriteScrollFactor('OldbgFreaks', 0.95, 0.95);		
	scaleObject('OldbgFreaks',7, 7);
	makeLuaSprite('OldweebTreesBack','Oldschool/OldweebTreesBack',-200, -20)
	setLuaSpriteScrollFactor('OldweebTreesBack', 0.85, 0.85);
	scaleObject('OldweebTreesBack', 6, 7);
	makeLuaSprite('OldweebTrees','Oldschool/OldweebTrees',-200, -20)
	setLuaSpriteScrollFactor('OldweebTrees', 0.85, 0.85);
	scaleObject('OldweebTrees', 6, 7);
	makeLuaSprite('OldweebSchool','Oldschool/OldweebSchool',-200, -20)
	setLuaSpriteScrollFactor('OldweebSchool', 0.85, 0.85);
	scaleObject('OldweebSchool', 6, 7);
	
    
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	setProperty('OldweebSky.antialiasing', false);
    setProperty('OldweebStreet.antialiasing', false);
    setProperty('OldbgFreaks.antialiasing', false);
    setProperty('OldweebTreesBack.antialiasing', false);
    setProperty('OldweebTrees.antialiasing', false);
    setProperty('OldweebSchool.antialiasing', false);
	end

	addLuaSprite('OldweebSky', false);
	addLuaSprite('OldweebStreet', false);
	addLuaSprite('OldbgFreaks', false);
	addAnimationByPrefix('OldbgFreaks','idle', 'BG girls group',24,true);
	addLuaSprite('OldweebTreesBack', false);
	addLuaSprite('OldweebTrees', false);
	addLuaSprite('OldweebSchool', false);


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end