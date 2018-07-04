class Animal
  def speak
    "Hello!"
  end
end

class Dog < Animal
end

class Cat < Animal
end

bob = Dog.new
kitty = Cat.new
puts bob.speak
puts kitty.speak   
