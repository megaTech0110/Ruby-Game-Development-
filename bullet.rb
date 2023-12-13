require 'gosu'
require 'rubygems'

class Bullet 
    SPEED = 15
    attr_reader :x, :y, :radius

    #we using the x y position of the player as well as angle hence those values goes in as an argument to the initalize of Bullet class 
    def initialize(window, x, y, angle)
        @window = window
        @x = x
        @y = y
        @image = Gosu::Image.new("images/laser.png")
        @direction = angle
        @radius = 3
    end

    def draw()
        @image.draw(@x - @radius, @y - @radius, 1)
    end

    def move()
        @x += Gosu.offset_x(@direction, SPEED)	
        @y += Gosu.offset_y(@direction, SPEED)
    end

    def onscreen?
          right = @window.width + @radius 	
          left = -@radius
          top = -@radius
          bottom = @window.height + @radius
          @x > left and @x < right and @y > top and @y < bottom
    end

end