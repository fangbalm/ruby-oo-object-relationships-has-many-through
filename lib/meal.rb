require 'pry'
class Meal
    @@all = []
    attr_accessor :waiter, :customer, :total, :tip
    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total 
        @tip = tip  
        @@all << self
    end

    def self.all 
        @@all 
    end
    alex = Customer.new("Alex", 30)
    rachel = Customer.new("Rachel", 27)
    dan = Waiter.new("Dan", 3)

    rachel.new_meal(dan, 50, 10)
    alex.new_meal(dan, 30, 5)

    # binding.pry

end
