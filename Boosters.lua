--[[
    CS50 2D
    Pong Remake

    -- Booster Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    Represents a paddle that can move up and down. Used in the main
    program to deflect the ball back toward the opponent.
]]

Booster = Class{}

--[[
    The `init` function on our class is called just once, when the object
    is first created. Used to set up all variables in the class and get it
    ready for use.

    Our Booster should take an X and a Y, for positioning, as well as a width
    and height for its dimensions.

    Note that `self` is a reference to *this* object, whichever object is
    instantiated at the time this function is called. Different objects can
    have their own x, y, width, and height values, thus serving as containers
    for data. In this sense, they're very similar to structs in C.
]]
function Booster:init(x, y, sprite, name, time, width, height)
    self.x = x
    self.y = y
    self.sprite = love.graphics.newImage(sprite)
    self.width = width
    self.height = height
    self.sx = self.width / self.sprite : getWidth()
    self.sy = self.height / self.sprite : getHeight()
    self.visible = false
    self.name = name
    self.time = time
end



function Booster:collides(object)
    -- first, check to see if the left edge of either is farther to the right
    -- than the right edge of the other
    if self.x >= object.x + object.width or object.x >= self.x + self.width then
        return false
    end

    -- then check to see if the bottom edge of either is higher than the top
    -- edge of the other
    if self.y >= object.y + object.height or object.y >= self.y + self.height then
        return false
    end

    -- if the above aren't true, they're overlapping
    if self.visible then
         return true
    end
    return false
end
--[[
    To be called by our main function in `love.draw`, ideally. Uses
    LÖVE2D's `rectangle` function, which takes in a draw mode as the first
    argument as well as the position and dimensions for the rectangle. To
    change the color, one must call `love.graphics.setColor`. As of the
    newest version of LÖVE2D, you can even draw rounded rectangles!
]]
function Booster:render()
    if self.visible then
        love.graphics.setColor(0, 0.3, 1, 0.5)
        love.graphics.draw(self.sprite, self.x, self.y, 0, self.sx, self.sy)
        love.graphics.setColor(1, 1, 1, 1)
    end
end