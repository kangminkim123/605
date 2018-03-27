-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on: kangmin
-- created by: mar 27
-----------------------------------------------------------------------------------------

local DayText = display.newText( "day", 500, 200, systemFont, 85)
DayText:setFillColor( 1, 0, 0 )

local AgeText = display.newText( "age", 500, 500, systemFont, 85)
AgeText:setFillColor( 1,0,0)

local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 550, 700, 150)
dayTextField.id = "day TextField"

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 250, 700, 150)
ageTextField.id = "age TextField"

local comspeak = display.newText( "what time it is", display.contentCenterX, display.contentCenterY + 250, 700, 150)

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png",  400, 157 )
calculateButton.x = ( display.contentCenterX - 0)
calculateButton.y = (display.contentCenterY - 50)
calculateButton.id = "calculate button"

local function calculateButtonFunction( event )
   
    
    local saturday = "saturday"
    local sunday = "sunday"
    

	local age = tonumber(ageTextField.text)
	local day = tostring(dayTextField.text)

	if (day == sunday or day == saturday) then
		comspeak.text = " you will relax"
    else
    	if age >  18 then
    		comspeak.text = "Time to go to work!"
    	else
    		comspeak.text = "Time to go to school!"
   		end
   	end

   	return nil
end

calculateButton:addEventListener( "touch", calculateButtonFunction)