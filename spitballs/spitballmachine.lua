
local machine = require('gameobject'):derive("spitballmachine")

function machine:_init()
  require('gameobject')._init(self)
  self.reloadTime = 0.5
end

function machine:update(game, dt)
  self:shouldShootCats(game, dt)
end

function machine:draw(game)
  love.graphics.ellipse("fill", self.x, self.y, 20, 20)

end

function machine:drawIcon(game)

end

function machine:place(x,y,game)
  self.x, self.y = x, y
  game:add(self)
end

function machine:shouldShootCats(game, dt)
  self.timeout = (self.timeout or 0) - dt
  if self.timeout < 0 then
    local catsNearBy = game:withinRange(self.x, self.y, 200, 'cat')
    for _, c in pairs(catsNearBy) do
      game:add(require('spitball')(self.x, self.y))
    end
    self.timeout = self.reloadTime
  end
end

return machine
