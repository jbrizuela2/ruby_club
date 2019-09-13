# Base class

class Animal
  attr_accessor :name # 
  attr_reader :sound

  @@animal_count = 0 # Class Variable

  def initialize(name = "--") # Constructor
    @name = name
    @sound = "meep meep"
    animal_created # Private method
  end
  
  def sound
    "Meep meep"
  end

  def self.count # Class method => Animal.count
    @@animal_count
  end

  private

  def animal_created # Can only be called within the class
    @@animal_count += 1
    p "A new animal named #{@name} was created"
  end
end

# First child
class Dog < Animal
  def sound
    "bark bark"
  end
end

class Cat < Animal
  def sound
    "meow"
  end
end

dog_pet = Dog.new("Optimus prime")
cat_pet = Cat.new("Chumcha")
wtf_pet = Animal.new()

p "There are #{Animal.count} animals"

p "#{dog_pet.name}: #{dog_pet.sound}"
p "#{cat_pet.name}: #{cat_pet.sound}"
p "#{wtf_pet.name}: #{wtf_pet.sound}"
