require 'pry'

class Triangle
  # write code here
  attr_accessor :length, :base, :height
  def initialize(length,base,height)
    @length = length
    @base = base
    @height = height    
  end

  def kind 
    unless is_valid? 
      raise TriangleError
      #'Not Valid Triangle'
    end
    #binding.pry
    if self.length == self.base and self.base == self.height 
      :equilateral
    elsif self.length == self.base or self.length == self.height or self.base == self.height 
      :isosceles
    elsif self.length != self.base and self.base != self.height and self.length != self.height 
      :scalene
    end
  
  end

  private
  def is_valid?
    if self.base > 0 and self.length > 0 and self.height > 0
      if self.base + self.length > self.height and self.height + self.length > self.base and self.height + self.base > self.length
        return true
      end
    end
    false
  end


  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
  end

end
