class Ingredient

    attr_accessor :name, :bakery, :dessert, :calorie_count
    @@all = []

    def initialize(name, bakery, dessert, calorie_count)
        @name = name
        @bakery = bakery
        @dessert = dessert
        @calorie_count = calorie_count

        @@all << self
    end

    def self.all
        @@all
    end

end