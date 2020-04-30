
module Frogmatic
	module Gui

		class Button
			attr_accessor :x,:y,:height,:width,:background

			def initialize(x:,y:,width:,height:,background:,callback:)
				@x = x
				@y = y
				@width = width
				@height = height
				@background = background

				Image.new(
				  @background,
				  x: @x, 
				  y: @y,
				  width: @width, 
				  height: @height,
				  color: [1.0, 0.5, 0.2, 1.0],
				  rotate: 90,
				  z: 10
				)

				Window.on :mouse_down do |event|
				  if (event.x > @x && event.x < @x+@width && event.y > @y && event.y < @y+@height)
				  	callback.call
				  end
				end

			end
		end

	end
end