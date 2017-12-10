class Human
  attr_accessor :age, :name, :spouse

  def introduce_spouse(hello = 'Hi')
    "#{hello}. My spouse is #{spouse}"
  end
end

class Man < Human
  attr_accessor :wife

  def wife
    @spouse
  end

  def wife=(woman)
    @spouse = woman
  end

  def introduce_spouse(hello)
    super + " (my wife)"
  end

  def to_s
    "#{name} the man, age #{age}, wife #{wife}"
  end

end

man = Human.new
man.instance_variables

man.age = 20
man.instance_variables

man = Man.new
man.instance_variables

man.age = 20
man.instance_variables

man.wife = "Natsuko"
man.instance_variables

man.wife

man.spouse

man.spouse = 'Akiko'

man.wife

man.introduce_spouse('Hello')

ls man

man.name = 'Bob'
puts man
