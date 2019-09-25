require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


l1 = Listing.new('grodno')
l2 = Listing.new('minsk')
l3 = Listing.new('warsaw')

g1 = Guest.new('Anya')
g2 = Guest.new('Brian')
g3 = Guest.new('Tania')

t1 = Trip.new(l1,g2)
t2 = Trip.new(l2,g1)
t3 = Trip.new(l3,g2)
t3 = Trip.new(l2,g2)


bak1 = Bakery.new("Ovenly")
bak2 = Bakery.new("Bakeri")
bak3 = Bakery.new("ChaCha Matcha")

des1 = Dessert.new("scone")
des2 = Dessert.new("banana bread")
des3 = Dessert.new("crouissant")

ing1 = Ingredient.new("flour", bak1, des1, 200)
ing2 = Ingredient.new("banana", bak2, des2, 300)
ing3 = Ingredient.new("butter", bak3, des3, 400)


binding.pry
0