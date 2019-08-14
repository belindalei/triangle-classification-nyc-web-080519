class Triangle
  # write code here
  attr_reader :lengthOne, :lengthTwo, :lengthThree
  
  def initialize(lengthOne, lengthTwo, lengthThree)
    @lengthOne = lengthOne
    @lengthTwo = lengthTwo
    @lengthThree = lengthThree
  end
  
  def kind
    triangle?
    if lengthOne == lengthTwo && lengthTwo == lengthThree
      :equilateral
    elsif lengthOne == lengthTwo || lengthTwo == lengthThree || lengthOne == lengthThree
      :isosceles
    else
      :scalene
    end
  end
  
  def triangle?
    if lengthOne = 0 || lengthTwo = 0 || lengthThree = 0 
      raise TriangleError
    elsif lengthOne + lengthTwo < lengthThree && lengthThree + lengthOne < lengthTwo 
      raise TriangleError
    else 
      puts "I'm a triangle!"
    end
  end 
  
  class TriangleError < StandardError 
    def message 
      "You have a Triangle Error" 
    end
  end
  
end
