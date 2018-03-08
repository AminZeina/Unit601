-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By: Amin Zeina
-- Created On: Mar 2018
-- 
-- User can guess what the random number is 
-----------------------------------------------------------------------------------------

math.randomseed( os.time() )

local randomNumber = math.random( 1, 6 )
local numberGuessed
--local showRandomNumber = display.newText( 'Random Number: ' .. randomNumber, 600, 1400, native.systemFont, 128)

local instructions = display.newText( 'Enter a number between 1-6: ', display.contentCenterX, 300, native.systemFont, 128 )
local numberEnteredField = native.newTextField( 600, 500, 700, 128 )
local enterButton = display.newImageRect( './Assets/Sprites/enterButton.png', 600, 270 )
enterButton.x = 1400
enterButton.y = 500
enterButton.id = "Enter Button"

local function onEnterClicked( event )
	numberGuessed = tonumber( numberEnteredField.text )
	if numberGuessed == randomNumber then
		local winText = display.newText( 'You Win!', display.contentCenterX, display.contentCenterY, native.systemFont, 256 )
	else 
		local loseText = display.newText( 'You Lose!', display.contentCenterX, display.contentCenterY, native.systemFont, 256 )
	end
end

enterButton:addEventListener( "touch", onEnterClicked )