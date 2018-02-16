-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On Feb 16 2018
--
-- Change Background colour and import image and text field with function
-----------------------------------------------------------------------------------------

-- Setting Background color
display.setDefault( "background", 1, 1, 1 )

-- Setting Message up
local myText = display.newText("Type Messsage Into Box", display.contentCenterX, 500, native.systemFont, 100)
myText:setFillColor( 1, 1, 0 )

-- Setting Up Text Field
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
answerTextField.id = "Message Box"

-- Importing imagebutton
local ball = display.newImageRect( "./assets/sprites/ball.png", 500, 480 )
ball.x = display.contentCenterX
ball.y = display.contentCenterY
ball.id = "Soccer Ball"

-- Making function to enter the text into console
local function ballTouch( event )
	-- Will display text a couple of times
	print( answerTextField.text )

	return true
end

ball:addEventListener( "touch", ballTouch )