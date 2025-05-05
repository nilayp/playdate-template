import 'Corelibs/object'
import 'Corelibs/graphics'
import 'Corelibs/sprites'
import 'Corelibs/timer'

local pd <const> = playdate
local gfx <const> = pd.graphics

gfx.drawText("Hello, Playdate!", 200, 120)

-- The diagnostic directive below is used to suppress the warning about
-- the duplicate field. This is a bug with visual code and the autocomplete.
-- https://devforum.play.date/t/playdate-luacats-vscode-autocomplete-types-and-inline-playdate-sdk-documentation/13629/5

--- @diagnostic disable-next-line duplicate-set-field
function playdate.update()
	gfx.sprite.update()
	pd.timer.updateTimers()
end
