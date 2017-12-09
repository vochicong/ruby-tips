[3 <=> 4, 3 <=> 3, 4 <=> 3]

class Ball

  include Comparable

  attr_accessor :name, :diameter

  def initialize(name, diameter)
    @name = name
    @diameter = diameter
  end

  def <=>(other)
    @diameter <=> other.diameter
  end

  def to_s
    "#{name} of size #{diameter}"
  end

end

small_ball = Ball.new('small', 15)
medium_ball = Ball.new('medium', 25)
big_ball = Ball.new('big', 45)

puts "small_ball > medium_ball: #{small_ball > medium_ball}"
puts "medium_ball <  big_ball: #{medium_ball < big_ball}"

class BallPool

  include Enumerable

  attr_accessor :balls

  def initialize
    @balls = []
  end

  def add_balls(*balls)
    @balls += balls
  end

  def each
    balls.each do |ball|
      yield ball
    end
  end

end

ball_pool = BallPool.new
ball_pool.add_balls(Ball.new('red', 15),
                    Ball.new('yellow', 20),
                    Ball.new('blue', 30),
                    Ball.new('green', 10),
                    )

puts ball_pool.select { |ball| ball.diameter > 20 }

puts ball_pool.reject { |ball| ball.diameter > 20 }

puts ball_pool.map { |ball| ball.diameter }

puts ball_pool.any? { |ball| ball.diameter > 100 }

puts ball_pool.count

puts ball_pool.first

puts ball_pool.sort_by { |ball| ball.diameter }

puts ball_pool.group_by { |ball| ball.diameter > 20 }

puts ball_pool.max_by { |ball| ball.diameter }

puts ball_pool.to_a
