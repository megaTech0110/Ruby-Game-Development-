require 'gosu'
require 'rubygems'

class Rock 
    SPEED = 4
    attr_reader :x, :y, :radius
    def initialize(window)
        @radius = 20	
        @x = rand(window.width - 2 * @radius) + @radius	
        @y = 0
        @image = Gosu::Image.new("images/rock.png") 
    end
    def move 
        @y += SPEED

    end

    def draw
        @image.draw(@x - @radius, @y - @radius, 1)
    end

end