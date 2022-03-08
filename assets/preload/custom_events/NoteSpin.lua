function onEvent(name, value1, value2)
	if name == 'NoteSpin' then
		noteTweenAngle('A', 0, value2, value1, 'circOut')
		noteTweenAngle('B', 1, value2, value1, 'circOut')
		noteTweenAngle('C', 2, value2, value1, 'circOut')
		noteTweenAngle('D', 3, value2, value1, 'circOut')
		noteTweenAngle('E', 4, value2, value1, 'circOut')

		noteTweenAngle('F', 5, value2, value1, 'circOut')
		noteTweenAngle('J', 6, value2, value1, 'circOut')
		noteTweenAngle('H', 7, value2, value1, 'circOut')
		noteTweenAngle('I', 8, value2, value1, 'circOut')
		if difficulty == 2 then
			noteTweenAngle('J', 9, value2, value1, 'circOut')
			noteTweenAngle('K', 16, value2, value1, 'circOut')
		end
	end
end

function onTweenCompleted(tag)
	if tag == 'A' then
		setPropertyFromGroup('opponentStrums', 0, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 1, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 2, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 3, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 4, 'angle', 0)

		setPropertyFromGroup('playerStrums', 0, 'angle', 0)
		setPropertyFromGroup('playerStrums', 1, 'angle', 0)
		setPropertyFromGroup('playerStrums', 2, 'angle', 0)
		setPropertyFromGroup('playerStrums', 3, 'angle', 0)
		setPropertyFromGroup('playerStrums', 4, 'angle', 0)
	end
end