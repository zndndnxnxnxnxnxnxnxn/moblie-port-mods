function onCreate()
	
makeLuaSprite('MOONBACK','BG',-500,-500)
	addLuaSprite('MOONBACK',false)
	setLuaSpriteScrollFactor('MOONBACK',0,0)
	close(true);
		
	makeLuaSprite('TREESBACK','BGTREES', -300,-0)
	addLuaSprite('TREESBACK',false)
	setLuaSpriteScrollFactor('TREESBG',0,0)
	
	makeLuaSprite('GROUND1','GROUND',-750,-200)
	addLuaSprite('GROUND1', false)

	makeAnimatedLuaSprite('tailsd', 'TBOP', -70, 300)
	addAnimationByPrefix('tailsd', 'bopidle', 'tailsbop', 24, null)
	addLuaSprite('tailsd', false)

	objectPlayAnimation('tailsd', 'bopidle', true)
	
		makeAnimatedLuaSprite('KNUCKLESD', 'KNUXBOP', 900, 200)
	addAnimationByPrefix('KNUCKLESD', 'boppidle', 'knucklesbop', 24, null)
	addLuaSprite('KNUCKLESD', false)

	objectPlayAnimation('tailsd', 'bopidle', true)
	end