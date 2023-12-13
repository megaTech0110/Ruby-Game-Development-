require 'gosu'
require 'rubygems'

class Player
    ROTATION_SPEED = 4
    ACCELERATION = 1
    FRICTION = 0.9
    
    #need attr_reader to get the real time position of the player as we pass them to the bullet for positioning
    attr_reader :x, :y, :angle, :radius 
    def initialize(window)
        @x = 200
        @y = 200
        @angle = 0 
        @image = Gosu::Image.new("images/player_1.png")
        @velocity_x = 20
        @velocity_y = 20
        @radius = 20
        @window = window
    end

    def draw
        @image.draw_rot(@x, @y, 1, @angle)

    end

    def turn_right()
        @angle += ROTATION_SPEED

    end

    def turn_left()
        @angle -= ROTATION_SPEED
    end


    def accelerate() #  takes the angle and an value as arguments and returns the value  
                     #in the x/y direction, either positive or negative. It replaces trignometric work. 
        @velocity_x += Gosu.offset_x(@angle, ACCELERATION)
        @velocity_y += Gosu.offset_y(@angle, ACCELERATION)
    end 
      
    def move
        @x += @velocity_x
        @y += @velocity_y
        @velocity_x *= FRICTION
        @velocity_y *= FRICTION

        if @x > @window.width - @radius
                @velocity_x = 0
                @x = @window.width - @radius
        end
            
            if @x < @radius
                @velocity_x = 0
                @x = @radius
        end 
            if @y > @window.height - @radius
            
                @velocity_y = 0
            
                @y = @window.height - @radius
            
        end
    end 

end