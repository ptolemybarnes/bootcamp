
class SingletonClass

  def initialize
    self.class.remove_method(:new)
  end


  private

  def instance
    self.instance
  end

  class << self
    private 

    def instance
      if @instance.nil?
        @instance = self.new
      end
    end
  end
end

SingletonClass.new
SingletonClass.new

class Animal
  @@number_of_animals = 0

  def initialize
    @@number_of_animals += 1
  end

  def speak name
    "Hello! My name is #{name}"
  end

  def swim
    'Swim method in Animal'
  end

  class << self
    def hi
    end
  end

end

module Swimmable

  def swim
    'I am swimming in the module Swimmable!'
  end

end

class Dog < Animal
  include Swimmable
end

class Cat < Animal
  include Swimmable

  def initialize
    @something = 'hi'
  end

  def speak name
    super + '. I am a cat.'
  end

end

kitty = Cat.new
dog = Dog.new

puts kitty.speak 'kitty'
puts kitty.swim
puts dog.swim
