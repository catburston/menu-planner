# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env == "development" || Rails.env == "test"
  puts "Cleaning DB first ..."
  Menu.destroy_all
  Recipe.destroy_all
  Ingredient.destroy_all
end

MENUS = 20

grocery_items = ['dairy', 'bakery', 'vegetable', 'fruit', 'pasta', 'pastry', 'canned', 'freezer', 'drinks']

puts "Creating Ingredients"
i1 = Ingredient.create!(title: "egg", grocery_item: grocery_items.sample)
i2 = Ingredient.create!(title: "cauliflower", grocery_item: grocery_items.sample)
i3 = Ingredient.create!(title: "parmesan", grocery_item: grocery_items.sample)
i4 = Ingredient.create!(title: "carrot", grocery_item: grocery_items.sample)
i5 = Ingredient.create!(title: "eggplant", grocery_item: grocery_items.sample)
i6 = Ingredient.create!(title: "leek", grocery_item: grocery_items.sample)
i7 = Ingredient.create!(title: "macaroni", grocery_item: grocery_items.sample)
i8 = Ingredient.create!(title: "milk", grocery_item: grocery_items.sample)
i9 = Ingredient.create!(title: "cream", grocery_item: grocery_items.sample)
i10 = Ingredient.create!(title: "celery", grocery_item: grocery_items.sample)
i11 = Ingredient.create!(title: "olives", grocery_item: grocery_items.sample)
i12 = Ingredient.create!(title: "mozzarella", grocery_item: grocery_items.sample)
i13 = Ingredient.create!(title: "flour", grocery_item: grocery_items.sample)
i14 = Ingredient.create!(title: "mushroom", grocery_item: grocery_items.sample)
i15 = Ingredient.create!(title: "ramen", grocery_item: grocery_items.sample)
i16 = Ingredient.create!(title: "tortilla", grocery_item: grocery_items.sample)
i17 = Ingredient.create!(title: "kidney beans", grocery_item: grocery_items.sample)
i18 = Ingredient.create!(title: "fennel", grocery_item: grocery_items.sample)
i19 = Ingredient.create!(title: "capsicum", grocery_item: grocery_items.sample)
i20 = Ingredient.create!(title: "risoni", grocery_item: grocery_items.sample)
i21 = Ingredient.create!(title: "walnuts", grocery_item: grocery_items.sample)
i22 = Ingredient.create!(title: "broccoli", grocery_item: grocery_items.sample)
i23 = Ingredient.create!(title: "capsicum", grocery_item: grocery_items.sample)
i24 = Ingredient.create!(title: "chilli", grocery_item: grocery_items.sample)
i25 = Ingredient.create!(title: "basil", grocery_item: grocery_items.sample)
i26 = Ingredient.create!(title: "spinach", grocery_item: grocery_items.sample)
i27 = Ingredient.create!(title: "zucchini", grocery_item: grocery_items.sample)
i28 = Ingredient.create!(title: "puff pastry", grocery_item: grocery_items.sample)
i29 = Ingredient.create!(title: "baguette", grocery_item: grocery_items.sample)
i30 = Ingredient.create!(title: "lemon", grocery_item: grocery_items.sample)
i31 = Ingredient.create!(title: "potato", grocery_item: grocery_items.sample)
ingredients = Ingredient.all.to_a
puts "#{ingredients.length} ingredients created"

puts "Creating Recipes"
recipe_categories = ['pasta', 'rice', 'soup', 'salad', 'other']
recipe_types = ['schoolnight', 'potheavy', 'main', 'side', 'dessert']
recipe_chefs = ['Cat', 'Tom']

r1 = Recipe.create!(title: "aloo gobi", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r2 = Recipe.create!(title: "pasta salad", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r3 = Recipe.create!(title: "eggplant pasta", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r4 = Recipe.create!(title: "recipe", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r5 = Recipe.create!(title: "leek walnut penne", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r6 = Recipe.create!(title: "cauliflower cheese", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r7 = Recipe.create!(title: "lentil pie", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r8 = Recipe.create!(title: "veggie lasagne", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r9 = Recipe.create!(title: "broccoli fritters", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r10 = Recipe.create!(title: "cauliflower fritters", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)

r11 = Recipe.create!(title: "caponata", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r12 = Recipe.create!(title: "chocolate cake", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r13 = Recipe.create!(title: "crumble", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r14 = Recipe.create!(title: "chickpea salad", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r15 = Recipe.create!(title: "tex mex", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r16 = Recipe.create!(title: "macaroni cheese", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r17 = Recipe.create!(title: "yaki soba", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r18 = Recipe.create!(title: "pad thai", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r19 = Recipe.create!(title: "red pepper alfredo", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r20 = Recipe.create!(title: "samosas", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)

r21 = Recipe.create!(title: "gnocchi", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r22 = Recipe.create!(title: "spanakopita", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r23 = Recipe.create!(title: "summer rolls", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r24 = Recipe.create!(title: "tabbouleh", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r25 = Recipe.create!(title: "tagine", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r26 = Recipe.create!(title: "bean salad", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r27 = Recipe.create!(title: "broccoli chilli", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r28 = Recipe.create!(title: "zucchini fritters", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r29 = Recipe.create!(title: "veggie burgers", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r30 = Recipe.create!(title: "roasted veg", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)

r31 = Recipe.create!(title: "quiche", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r32 = Recipe.create!(title: "tortilla", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)
r33 = Recipe.create!(title: "broccoli frittata", recipe_type: recipe_types.sample, category: recipe_categories.sample, chef: recipe_chefs.sample)

recipes = Recipe.all.to_a
recipes.each do |rec, index|
  (3..7).each do
    rec.ingredients << ingredients.sample
  end
end
puts "#{recipes.length} recipes created"

puts "Creating Menus"
(1..MENUS).each do |index|
  Menu.create!(title: "Menu No. " + index.to_s)
end

menus = Menu.all.to_a
menus.each do |m, index|
  (3..6).each do
    m.recipes << recipes.sample
  end
end
puts "#{menus.length} menus created"
