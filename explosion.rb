require 'gosu'
require 'rubygems'

class Explosion 
    attr_reader :finished
    def initialize(window, x, y)
          @x = x
          @y = y	
          @radius = 30
          @images = Gosu::Image.load_tiles("images/explosion.png", 45, 45)
          @image_index = 0
          @finished = false
    end

    def draw
 #we need to print the image and then delete it from the screen 
 # .count used to check the length of an array, since array is of 1 hence, we finish with increment of 1 
        if @image_index < @images.count
            @images[@image_index].draw(@x - @radius, @y - @radius, 2)
            @image_index += 1
        else
            @finished = true
        end
    end


end
    