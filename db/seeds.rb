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
Ingredient.create(name: 'white rum', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/rum.svg')
Ingredient.create(name: 'gin', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/gin.svg')
Ingredient.create(name: 'scotch', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/brandy.svg')
Ingredient.create(name: 'cognac', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/cognac.svg')
Ingredient.create(name: 'bourbon', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/vodka.svg')
Ingredient.create(name: 'vodka', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/bourbon.svg')
Ingredient.create(name: 'blanco tequila', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/tequila.svg')
Ingredient.create(name: 'reposado tequila', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/jagermeister.svg')
Ingredient.create(name: 'anejo tequila', category: 'liquor', src_path: 'ingredient_icons-svgs/svg-liquors/fireball.svg')

#Liqueurs
Ingredient.create(name: 'triple sec', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/triple-sec.svg')
Ingredient.create(name: 'herbal liqueur', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/herbal-liqueur.svg')
Ingredient.create(name: 'amaro', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/amaro.svg')
Ingredient.create(name: 'dry vermouth', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/dry-vermouth.svg')
Ingredient.create(name: 'cointreau', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/cointreau.svg')
Ingredient.create(name: 'campari', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/campari.svg')
Ingredient.create(name: 'frangelico', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/frangelico.svg')
Ingredient.create(name: 'coffee liqueur', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/coffee-liqueur.svg')
Ingredient.create(name: 'sake', category: 'liqueur', src_path: 'ingredient_icons-svgs/svg-liqueurs/sake.svg')

# Syrups
Ingredient.create(name: 'brown sugar', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/brown-sugar.svg')
Ingredient.create(name: 'maple', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/maple.svg')
Ingredient.create(name: 'honey', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/honey.svg')
Ingredient.create(name: 'flavoured syrup', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/flavoured-syrup.svg')
Ingredient.create(name: 'white sugar', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/white-sugar.svg')
Ingredient.create(name: 'fruit preserve', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/fruit-preserve.svg')
Ingredient.create(name: 'ginger', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/ginger.svg')
Ingredient.create(name: 'cinnamon', category: 'syrup', src_path: 'ingredient_icons-svgs/svg-syrups/cinnamon.svg')

# Juices
Ingredient.create(name: 'lime', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/lime.svg')
Ingredient.create(name: 'lemon', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/lemon.svg')
Ingredient.create(name: 'grapefruit', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/grapefruit.svg')
Ingredient.create(name: 'orange', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/orange.svg')
Ingredient.create(name: 'apple', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/apple.svg')
Ingredient.create(name: 'cranberry', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/cranberry.svg')
Ingredient.create(name: 'pineapple', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/pineapple.svg')
Ingredient.create(name: 'mango', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/mango.svg')
Ingredient.create(name: 'grape', category: 'juice', src_path: 'ingredient_icons-svgs/svg-juices/grape.svg')

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

# Pass ingredients in user Jack Torrance's ingredients
ingredients = Ingredient.all
ingredients.each do |i|
  UserIngredient.create(ingredient: i, user: User.first)
end

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
recipetype = RecipeType.create(
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

Recipe.create!(name: "Under Your Nose", recipe_type: recipetype)
pp Recipe.all

puts ""
puts "> Done generating ingredients! 🥃"
