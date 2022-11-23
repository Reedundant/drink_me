puts "> Destroying all ingredients..."
Ingredient.destroy_all
puts "> Done destroying all ingredients! "
puts "> Generating ingredients..."
puts ""

# Liquors
# rum, gin, scotch, cognac, whisky, vodka, vadka, tequila
Ingredient.create(name: 'rum', category: 'liquor')
Ingredient.create(name: 'gin', category: 'liquor')
Ingredient.create(name: 'scotch', category: 'liquor')
Ingredient.create(name: 'cognac', category: 'liquor')
Ingredient.create(name: 'whisky', category: 'liquor')
Ingredient.create(name: 'vodka', category: 'liquor')
Ingredient.create(name: 'tequila', category: 'liquor')

#Liqueurs
# coffee liqueur, amaro, herbal liqueur, sweet vermouth, dry vermouth, aperitif, cointreau
Ingredient.create(name: 'coffee liqueur', category: 'liqueur')
Ingredient.create(name: 'amaro', category: 'liqueur')
Ingredient.create(name: 'herbal liqueur', category: 'liqueur')
Ingredient.create(name: 'sweet vermouth', category: 'liqueur')
Ingredient.create(name: 'dry vermouth', category: 'liqueur')
Ingredient.create(name: 'aperitif', category: 'liqueur')
Ingredient.create(name: 'cointreau', category: 'liqueur')

# Syrups
Ingredient.create(name: 'honey', category: 'syrup')
Ingredient.create(name: 'maple syrup', category: 'syrup')

# Juices
Ingredient.create(name: 'lemon juice', category: 'juice')
Ingredient.create(name: 'lime juice', category: 'juice')
Ingredient.create(name: 'pineapple juice', category: 'juice')
Ingredient.create(name: 'apple juice', category: 'juice')

pp Ingredient.all

puts ""
puts "> Done generating ingredients! 🥃"
