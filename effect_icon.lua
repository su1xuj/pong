

Effect = Class{}


function Effect:init(x, y, sprite, name,width, height)
    self.x = x
    self.y = y
    self.sprite = love.graphics.newImage(sprite)
    self.width = width
    self.height = height
    self.sx = self.width / self.sprite : getWidth()
    self.sy = self.height / self.sprite : getHeight()
    self.visible = false
    self.name = name
    self.time = nil
end


function Effect:render()
    if self.visible then
        love.graphics.setColor(0, 0.3, 1, 0.5)
        love.graphics.draw(self.sprite, self.x, self.y, 0, self.sx, self.sy)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.setFont(smallFont)
        love.graphics.setColor(0, 255/255, 0, 255/255)
        love.graphics.print( string.format("%.2f", self.time),  self.x + 15, self.y)
        love.graphics.setColor(255, 255, 255, 255)
    end
end
