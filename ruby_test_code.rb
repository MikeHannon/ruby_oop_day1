class User
  #hey  - there two variables here that we can set and get in this class
  attr_accessor :first_name, :last_name
  # when we create new user, we can pass information to it, and use that to set our possible variables
  def initialize(f_name, l_name)
    #because we created the attr_accessor, we can now get first_name and last_name as @first_name and @last_name
    @first_name = f_name
    #@last_name = l_name
    puts l_name, f_name, "These are variables that were passed in"
  end
  def print_names()
    puts @first_name, "first_name, class variable"
    puts @last_name, "last_name, class variable"
    return self
  end
end

class Mammal
  attr_accessor :alive, :name
  def initialize(pet_name)
    @alive = true
    @name = pet_name
    puts 'I am alive!'
    self
  end
  def breathe
    puts 'Inhale and exhale'
    self
  end
end

#
class Dog < Mammal # Dog can do everything that a mammal can do (< = extend)
  attr_accessor :health
  #overwrote the parent initialize method
  def initialize(dog_name) #an example of overriding methods
    @health = 200
    #runs parent initialize (from mammal and )
    super(dog_name) #calling the parent method of initialize
    self
  end
  #methods
  def print_health
    puts @name, "has health of: ", @health
    @health -= 50
    "What???"
    #no self -- then what gets returned is just what ever the last thing that was shown
    #self #is all of our dog ralph, who can breathe, and print_health (e.g. the whole object)
    self
  end
  #methods
  def reverse
    puts "I don't go backwards well, I am a dog"
    self
  end
end
armadillo = Dog.new("ralph").breathe.print_health
puts armadillo.reverse #last line is the printing of the self which is the dog class object
