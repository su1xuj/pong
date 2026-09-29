

Button = Class{}


function Button:init(x, y, text, name,width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.text = text
    self.name = name
end


function Button:render()
        love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.setFont(smallFont)
        love.graphics.setColor(0, 255/255, 0, 255/255)
        love.graphics.printf(self.text, self.x, (self.y + self.height/ 2) - smallFont:getHeight() / 2  , self.width, 'center')
end
