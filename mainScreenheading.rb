require 'gosu'
require 'rubygems'

class Heading 
    def initialize(window, text,)
        @x = x
        @y = @initial_y = y 
        @text = text 
        @font = Gosu::Font.new("New Game")
    end  

    def draw
        @font.draw(@text, @x, @y, 1)
    end 
end 