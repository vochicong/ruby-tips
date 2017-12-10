class Dog
  @kind = :nihonken # class attribute

  attr_accessor :name, :age # instance attributes

  def self.kind # class method
    @kind
  end

  def initialize(name, age) # instance new (initialization) method
    @name = name
    @age = age
  end

  def to_s # instance method
    "Dog of kind #{self.class.kind}, name #{name} and age #{age}"
  end
end

pero = Dog.new("pero", 2)
puts pero
