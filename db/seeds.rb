puts "> Destroying all ingredients, and users..."
Ingredient.destroy_all
Tool.destroy_all
UserTool.destroy_all
User.destroy_all
puts "> Done destroying all ingredients, and users! "

puts "> Generating users..."
puts ""

User.create!(email: 'jacktorrance@gmail.com', username: 'jacktorrance', age: 57, password: 'drinkme123')
User.create!(email: 'jacknicholson@gmail.com', username: 'jacknietzscheson', age: 85, password: 'drinkme123')
# pp User.all

puts "> Done generating users! 👤"
puts ""

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

# Tools
Tool.create(name: 'jigger', units: 'oz')
Tool.create(name: 'measuring spoons', units: 'tsp')
Tool.create(name: 'measuring cups', units: 'ml')
Tool.create(name: 'large measurer', units: 'tsp')
Tool.create(name: 'bar spoon', units: '')
Tool.create(name: 'strainer', units: '')
Tool.create(name: 'shaker set', units: '')
Tool.create(name: 'citrus press', units: '')
Tool.create(name: 'blowtorch', units: '')
Tool.create(name: 'muddler', units: '')


pp Ingredient.all

# Recipe types
RecipeType.create(
  name: 'Duo 1',
  liquor_ratio: 56,
  liquer_ratio: 28,
  difficulty: 'Easy'
)
RecipeType.create(
  name: 'Duo 2',
  liquor_ratio: 42,
  liquer_ratio: 42,
  difficulty: 'Easy'
)

RecipeType.create(
  name: 'Trio 1',
  liquor_ratio: 21,
  liquer_ratio: 21,
  liquer2_ratio: 21,
  difficulty: 'Easy'
)
RecipeType.create(
  name: 'Trio 2',
  liquor_ratio: 56,
  liquer_ratio: 14,
  liquer2_ratio: 14,
  difficulty: 'Easy'
)
RecipeType.create(
  name: 'Trio 3',
  liquor_ratio: 56,
  liquer_ratio: 21,
  liquer2_ratio: 7,
  difficulty: 'Easy'
)

RecipeType.create(
  name: 'Simple Sour 1',
  liquor_ratio: 56,
  juice_ratio: 21,
  syrup_ratio: 21,
  difficulty: 'Easy'
)

RecipeType.create(
  name: 'Simple Sour 2',
  liquor_ratio: 42,
  liquer_ratio: 28,
  syrup_ratio: 21,
  juice_ratio: 21,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'Simple Sour 3',
  liquor_ratio: 28,
  liquor2_ratio: 28,
  juice_ratio: 21,
  syrup_ratio: 21,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'Simple Sour 4',
  liquor_ratio: 14,
  liquer_ratio: 42,
  syrup_ratio: 28,
  juice_ratio: 21,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'New Orleans Sour 1',
  liquor_ratio: 42,
  liquer_ratio: 21,
  liquer2_ratio: 21,
  juice_ratio: 14,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'New Orleans Sour 2',
  liquor_ratio: 42,
  liquer_ratio: 21,
  juice_ratio: 21,
  syrup_ratio: 21,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'New Orleans Sour 3',
  liquor_ratio: 42,
  liquer_ratio: 21,
  juice_ratio: 28,
  syrup_ratio: 14,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'New Orleans Sour 4 ',
  liquor_ratio: 56,
  liquer_ratio: 14,
  liquer2_ratio: 14,
  juice_ratio: 7,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'New Orleans Sour 5 ',
  liquor_ratio: 21,
  liquer_ratio: 21,
  liquer2_ratio: 21,
  juice_ratio: 21,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'International Sour 1',
  liquor_ratio: 56,
  liquer_ratio: 7,
  juice_ratio: 21,
  juice2_ratio: 7,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'International Sour 2',
  liquor_ratio: 56,
  liquer_ratio: 7,
  juice_ratio: 14,
  juice2_ratio: 14,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'International Sour 3',
  liquor_ratio: 56,
  liquer_ratio: 7,
  juice_ratio: 21,
  juice2_ratio: 7,
  difficulty: 'Medium'
)

RecipeType.create(
  name: 'Tiki 1',
  liquor_ratio: 56,
  liquor2_ratio: 28,
  juice_ratio: 56,
  juice2_ratio: 14,
  syrup_ratio: 14,
  other_ratio: 1,
  difficulty: 'Hard'
)

RecipeType.create(
  name: 'Tiki 2',
  liquor_ratio: 56,
  juice_ratio: 21,
  juice2_ratio: 21,
  syrup_ratio: 14,
  other_ratio: 1,
  difficulty: 'Hard'
)
RecipeType.create(
  name: 'Tiki 2',
  liquor_ratio: 42,
  liquor2_ratio: 42,
  liquer_ratio: 14,
  juice_ratio: 28,
  juice2_ratio: 14,
  syrup_ratio: 14,
  other_ratio: 1,
  difficulty: 'Hard'
)

pp RecipeType.all

puts ""
puts "> Done generating ingredients! 🥃"
