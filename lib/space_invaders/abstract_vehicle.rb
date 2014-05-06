require_relative 'bullet'
require_relative 'bullet_collection'

module SpaceInvaders
  class AbstractVehicle
    attr_accessor :x_position, :y_position

    def initialize window
      @window = window
      @bullet_collection = BulletCollection.new
    end

    def bullets
      @bullet_collection
    end

    def x_middle
      @x_position + @image.width/2
    end

    def width
      @image.width
    end

    def height
      @image.height
    end

    def draw
      @image.draw @x_position, @y_position, 1
      @bullet_collection.draw
    end

  end
end