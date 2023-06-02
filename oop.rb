# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color, :say

    def initialize(name, say)
        @name = name
        @color = "silver"
        @say = "*~* #{say} *~*"
    end
end

unicorn1 = Unicorn.new("Abe", "weesh")

p unicorn1.say

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
        print "#{name} is no longer thirsty."
    end

end

vampire1 = Vampire.new("Vlad")
puts vampire1.drink

p vampire1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat 
        stomach = 4
        return stomach - 1 
        if stomach <= 0
            @is_hungry = false
        end
    end

end

dragon1 = Dragon.new("Henry", "Corey", "Red")

puts dragon1.eat

p dragon1

puts dragon1.eat
puts dragon1.eat
puts dragon1.eat

p dragon1

#I still can not figure out how to call on this methods multiple times to recieve a different result.  I tried creating an array of the stomach and having the eat method activate stomach.pop.  When the array was empty, it was suppossed to switch the Boolean value of is_hungry.  However, it only eliminated d each time; it doesn't modify the array to remove the next element.  I also tried an if then conditional with some integer manipulation, but I couldn't figure how to connect the integers to the boolearn statement. 

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age
    def initialize(name,disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = has_ring?
    end
    def celebrate_birthday
        @age = age + 1
        if age >= 33giy
            @is_adult = true
        end

        if age >= 101
            @is_old = true
        end
    end
        def has_ring?
            if @name == "Frodo"
                @has_ring = true
            else 
                @has_ring = false
            end
        end
end

hobbit1 = Hobbit.new("Frodo", "Chipper")
200.times {hobbit1.celebrate_birthday}

p hobbit1

#I tried playing around with this, but it's the same problem as before.  I can't figure out how to call upon a method multiple times with a different result.  This one seems more obvious to me I have to use an if-else conditional, but I can't seem to be able to store the new values to modify them :(