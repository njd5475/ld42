require('engine.common')

joyInputs = {"x","y",'a','b','back','start','leftstick','rightstick','leftshoulder','rightshoulder','dpup','dpdown','dpleft','dpright'}
LogoFont = love.graphics.newFont("fonts/press-start-2p/PressStart2P-Regular.ttf", 56)
LogoMidFont = love.graphics.newFont("fonts/press-start-2p/PressStart2P-Regular.ttf", 18)
LogoRegularFont = love.graphics.newFont("fonts/press-start-2p/PressStart2P-Regular.ttf", 10)

HouseBrick = require('objects.housebrick')
Vine = require('objects.vine')
Player = require('objects.player')
Selection = require('objects.selection')
TheSheet = require('thesheet')
Manticle = require('objects.manticle')
